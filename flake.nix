{
  description = "A Typst project that uses Typst packages";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixos-unstable/nixexprs.tar.xz";

    typix = {
      url = "github:loqusion/typix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, typix }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      inherit (pkgs) lib;

      typixLib = typix.lib.${system};

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

      typstProjectFor = typstSource:
        let
          commonArgs' = commonArgs // { inherit typstSource; };
          buildArgs = commonArgs' // { inherit src unstable_typstPackages; };
        in
        {
          build = typixLib.buildTypstProject buildArgs;
          # Compile a Typst project, and then copy the result
          # to the current directory
          buildLocal = typixLib.buildTypstProjectLocal buildArgs;

          # Watch a project and recompile on changes
          watch = typixLib.watchTypstProject commonArgs';
        };

      resume = typstProjectFor "resume.typ";
      letter = typstProjectFor "letter.typ";
    in
    {
      checks.${system} = {
        letter-build = letter.build;
        letter-buildLocal = letter.buildLocal;
        letter-watch = letter.watch;

        resume-build = resume.build;
        resume-buildLocal = resume.buildLocal;
        resume-watch = resume.watch;
      };

      packages.${system} = {
        default = self.packages.${system}.resume;
        letter = letter.build;
        resume = resume.build;
      };

      apps.${system} = {
        default = self.apps.${system}.resume-watch;

        letter = {
          type = "app";
          program = lib.getExe letter.buildLocal;
        };

        letter-watch = {
          type = "app";
          program = lib.getExe letter.watch;
        };

        resume = {
          type = "app";
          program = lib.getExe resume.buildLocal;
        };

        resume-watch = {
          type = "app";
          program = lib.getExe resume.watch;
        };
      };

      devShells.${system}.default = typixLib.devShell {
        inherit (commonArgs) fontPaths virtualPaths;
        packages = [
          # WARNING: Don't run `typst-build` directly, instead use `nix run .#build`
          # See https://github.com/loqusion/typix/issues/2
          # build-script
          resume.watch
          # More packages can be added here, like typstfmt
          # pkgs.typstfmt
        ];
      };
    };
}
