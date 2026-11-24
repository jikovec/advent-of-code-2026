# Development and release workflow

The committed toolchain pin is shared by Cargo, the shell and CI. With Nix, run `nix develop`. Use `nix develop .#profiling` for optional Linux profiling tools. With Rustup, the pinned toolchain and components are selected when you run Cargo in the repository.

Run `cargo fetch --locked` during setup. After dependency and tool acquisition, use ordinary Cargo with `--offline --locked`. If the pinned `cargo-aoc` executable is installed, prefix Cargo invocations with `CARGO_NET_OFFLINE=true` on a POSIX shell to keep subprocesses offline. Keep input paths, outputs and profiles in ignored storage.

Scaffold a day with `cargo aoc init --day N`. Store manually acquired input as `inputs/dayNN.txt` and use `--input PATH` to run against independently authored fixtures or an alternate file. You may use `cargo run --bin dayNN -- --part P` without installing the CLI. Implement and test the reference variant first. Add an optimized variant when useful, then exercise differential tests and `cargo aoc compare --day N --part P`.

Install the repository-local input audit hook with `cargo aoc install-hook`, then run the local checks before committing.

```sh
cargo fmt --all --check
cargo clippy --locked --offline --all-targets -- -D warnings
cargo build --locked --offline --all-targets
cargo test --locked --offline --all-targets
cargo test --locked --offline --doc
cargo doc --locked --offline --no-deps
cargo aoc readme --check
```

Run `cargo aoc verify` to check the tracked input paths, dependency pin and generated progress. From a clean `main`, run `cargo aoc release` to preview release validation. Push the intended release commit and wait for its GitHub CI. Run `cargo aoc release --publish` from that commit on `main` after CI succeeds. The tool checks the remote commit and CI before creating the tag and GitHub release. Update the Cargo package version, lockfile, changelog and generated progress together. Use minor releases for substantial additions and patches for corrections. Reserve `v1.0.0` for a completed portfolio once its acceptance criteria hold. Record stars after confirming them in Advent of Code.

To adopt a new framework, update the explicit Cargo dependency version and full Git commit revision, update `Cargo.lock`, change the framework record in `progress.tsv` and update the installation command in `README.md`, regenerate the progress section and verify. Preserve the pin when trying a local framework checkout with Cargo's command-line `--config 'patch."https://github.com/jikovec/aoc-rust".aoc-rust.path="/absolute/path/to/aoc-rust"'` override in a disposable annual checkout. Cargo can update that checkout's lockfile during the experiment.
