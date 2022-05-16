{}:
with (import <nixpkgs> {});

let
  mkDependencies = import ./nix/haskell-dependencies.nix;
in
  haskell.lib.buildStackProject {
    name = "lz4-frame-conduit-stack";

    ghc = haskellPackages.ghcWithHoogle mkDependencies;

    # System dependencies used at build-time go in here.
    nativeBuildInputs = [
      lz4
    ];

    # System dependencies used at run-time go in here.
    buildInputs = [
      zlib
    ];
  }
