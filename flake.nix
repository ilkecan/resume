{
  description = "A Typst project that uses Typst packages";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixos-unstable/nixexprs.tar.xz";

    typix = {
      url = "github:loqusion/typix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs:
    inputs.flake-utils.lib.eachDefaultSystem (system: let
      pkgs = inputs.nixpkgs.legacyPackages.${system};
      inherit (pkgs) lib;

      typixLib = inputs.typix.lib.${system};

      myTypstSource = typixLib.cleanTypstSource ./.;
      src = lib.fileset.toSource {
        root = ./.;
        fileset = lib.fileset.unions [
          (lib.fileset.fromSource myTypstSource)
          ./assets
          ./modules_en
        ];
      };
      commonArgs = {
        typstSource = "cv.typ";

        fontPaths = with pkgs; [
          "${font-awesome}/share/fonts/opentype"
          "${roboto}/share/fonts/truetype"
          "${source-sans}/share/fonts/truetype"
        ];

        virtualPaths = [
          # Add paths that must be locally accessible to typst here
          # {
          #   dest = "icons";
          #   src = "${inputs.font-awesome}/svgs/regular";
          # }
        ];
      };

      unstable_typstPackages = [
        {
          name = "brilliant-cv";
          version = "3.1.1";
          hash = "sha256-W7q7iEiBYa+WH4NT+49/c9tLaqFHl/7MEOGeaJbVnw0=";
        }
        {
          name = "fontawesome";
          version = "0.6.0";
          hash = "sha256-dgb+YAYLEKgMMEWa8yelMvRdEoesPj5HI+70w3mCUcQ=";
        }
      ];

      # Compile a Typst project, *without* copying the result
      # to the current directory
      build-drv = typixLib.buildTypstProject (commonArgs
        // {
          inherit src unstable_typstPackages;
        });

      # Compile a Typst project, and then copy the result
      # to the current directory
      build-script = typixLib.buildTypstProjectLocal (commonArgs
        // {
          inherit src unstable_typstPackages;
        });

      # Watch a project and recompile on changes
      watch-script = typixLib.watchTypstProject commonArgs;
    in {
      checks = {
        inherit build-drv build-script watch-script;
      };

      packages.default = build-drv;

      apps = rec {
        default = watch;
        build = inputs.flake-utils.lib.mkApp {
          drv = build-script;
        };
        watch = inputs.flake-utils.lib.mkApp {
          drv = watch-script;
        };
      };

      devShells.default = typixLib.devShell {
        inherit (commonArgs) fontPaths virtualPaths;
        packages = [
          # WARNING: Don't run `typst-build` directly, instead use `nix run .#build`
          # See https://github.com/loqusion/typix/issues/2
          # build-script
          watch-script
          # More packages can be added here, like typstfmt
          # pkgs.typstfmt
        ];
      };
    });
}
