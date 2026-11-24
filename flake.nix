{
  description = "Pinned Rust development and optional Linux profiling";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    rust-overlay.url = "github:oxalica/rust-overlay";
    rust-overlay.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { nixpkgs, rust-overlay, ... }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
    in {
      devShells = nixpkgs.lib.genAttrs systems (system:
        let
          pkgs = import nixpkgs { inherit system; overlays = [ rust-overlay.overlays.default ]; };
          rust = pkgs.rust-bin.fromRustupToolchainFile ./rust-toolchain.toml;
          common = [ rust pkgs.git pkgs.gh ];
          profiling = pkgs.lib.optionals pkgs.stdenv.isLinux [
            pkgs.linuxPackages.perf pkgs.valgrind pkgs.heaptrack pkgs.time pkgs.flamegraph
          ];
          shell = packages: pkgs.mkShell {
            inherit packages;
            shellHook = ''
              if [ -x "$PWD/.aoc/bin/cargo-aoc" ]; then
                export PATH="$PWD/.aoc/bin:$PATH"
              fi
            '';
          };
        in {
          default = shell common;
          profiling = shell (common ++ profiling);
        });
    };
}
