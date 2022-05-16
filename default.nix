{ pkgs ? import <nixpkgs> {}}:

pkgs.buildEnv {
    name="lz4-frame-conduit-development";
    paths=[pkgs.stack];
}
