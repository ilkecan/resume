{
  description = "A Typst project that uses Typst packages";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixos-unstable/nixexprs.tar.xz";

    typix = {
      url = "github:loqusion/typix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs:
    let
      system = "x86_64-linux";
      pkgs = inputs.nixpkgs.legacyPackages.${system};
      inherit (pkgs) lib;

      typixLib = inputs.typix.lib.${system};

      myTypstSource = typixLib.cleanTypstSource ./.;
      src = lib.fileset.toSource {
        root = ./.;
        fileset = lib.fileset.unions [
          (lib.fileset.fromSource myTypstSource)
          ./assets
          ./profile_en
        ];
      };
      commonArgs = {
        typstSource = "resume.typ";

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
          version = "4.1.0";
          hash = "sha256-EMbIobUiewPN+sGoxw5oDYyzP5ZFU/wtNyq8CEQ/pmA=";
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
    in
    {
      checks.${system} = {
        inherit build-drv build-script watch-script;
      };

      packages.${system}.default = build-drv;

      apps.${system} = rec {
        default = watch;

        watch = {
          type = "app";
          program = lib.getExe watch-script;
        };

        build = {
          type = "app";
          program = lib.getExe build-script;
        };
      };

      devShells.${system}.default = typixLib.devShell {
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
    };
}
