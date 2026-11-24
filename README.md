# Advent of Code 2026

An independent Rust portfolio for the [2026 Advent of Code event](https://adventofcode.com/2026). Each day is a separate binary. The project uses the Rust standard library and [aoc-rust](https://github.com/jikovec/aoc-rust), pinned to the commit for framework release `v1.0.0` through Cargo.

## Getting started

Run `nix develop` on NixOS, or use a Rustup installation on another OS. Run `cargo fetch --locked` once before using Cargo offline.

```sh
cargo install --locked --git https://github.com/jikovec/aoc-rust --rev ec79ca496493aac9661dc9ca0bcba7f24cef2b20 --bin cargo-aoc
cargo aoc install-hook
cargo aoc init --day 1
cargo aoc readme
```

Save the manually downloaded input at `inputs/day01.txt`. Add the parser in `src/bin/day01/main.rs` as needed and implement each reference solver in its `partN.rs` module. Change that part's `SOLVER` constant to `Some(solve)`. Return an explicit error for invalid input.

```sh
cargo run --offline --bin day01 -- --part 1
cargo test --offline --bin day01
cargo aoc bench --day 1 --part 1
```

See [the development guide](CONTRIBUTING.md), [repository architecture](docs/architecture.md) and [benchmark recording policy](benchmarks/README.md).

## Progress

<!-- aoc-rust:progress:start -->

0/24 stars (0.0%); 0/24 locally implemented parts; 0/12 fully implemented days; 0/12 scaffolded days.

Framework `v1.0.0` · Annual release version `v0.1.0`

| Day | Release date | Part | Local progress | AoC star | Reference | Optimized | Tests | Reference mean | Optimized mean | Mean time saved | Profile | Visual | Complexity |
| ---: | :--- | ---: | :--- | :---: | :---: | :---: | :--- | ---: | ---: | ---: | :---: | :---: | :--- |
| 01 | 2026-12-01 | 1 | Not started | - | no | no | - | - | - | - | no | no | - |
| 01 | 2026-12-01 | 2 | Not started | - | no | no | - | - | - | - | no | no | - |
| 02 | 2026-12-02 | 1 | Not started | - | no | no | - | - | - | - | no | no | - |
| 02 | 2026-12-02 | 2 | Not started | - | no | no | - | - | - | - | no | no | - |
| 03 | 2026-12-03 | 1 | Not started | - | no | no | - | - | - | - | no | no | - |
| 03 | 2026-12-03 | 2 | Not started | - | no | no | - | - | - | - | no | no | - |
| 04 | 2026-12-04 | 1 | Not started | - | no | no | - | - | - | - | no | no | - |
| 04 | 2026-12-04 | 2 | Not started | - | no | no | - | - | - | - | no | no | - |
| 05 | 2026-12-05 | 1 | Not started | - | no | no | - | - | - | - | no | no | - |
| 05 | 2026-12-05 | 2 | Not started | - | no | no | - | - | - | - | no | no | - |
| 06 | 2026-12-06 | 1 | Not started | - | no | no | - | - | - | - | no | no | - |
| 06 | 2026-12-06 | 2 | Not started | - | no | no | - | - | - | - | no | no | - |
| 07 | 2026-12-07 | 1 | Not started | - | no | no | - | - | - | - | no | no | - |
| 07 | 2026-12-07 | 2 | Not started | - | no | no | - | - | - | - | no | no | - |
| 08 | 2026-12-08 | 1 | Not started | - | no | no | - | - | - | - | no | no | - |
| 08 | 2026-12-08 | 2 | Not started | - | no | no | - | - | - | - | no | no | - |
| 09 | 2026-12-09 | 1 | Not started | - | no | no | - | - | - | - | no | no | - |
| 09 | 2026-12-09 | 2 | Not started | - | no | no | - | - | - | - | no | no | - |
| 10 | 2026-12-10 | 1 | Not started | - | no | no | - | - | - | - | no | no | - |
| 10 | 2026-12-10 | 2 | Not started | - | no | no | - | - | - | - | no | no | - |
| 11 | 2026-12-11 | 1 | Not started | - | no | no | - | - | - | - | no | no | - |
| 11 | 2026-12-11 | 2 | Not started | - | no | no | - | - | - | - | no | no | - |
| 12 | 2026-12-12 | 1 | Not started | - | no | no | - | - | - | - | no | no | - |
| 12 | 2026-12-12 | 2 | Not started | - | no | no | - | - | - | - | no | no | - |

<!-- aoc-rust:progress:end -->

Puzzle statements, personal puzzle inputs and copied examples belong with the [original event](https://adventofcode.com/about#faq_copying). Repository fixtures are independently authored. Solution code is available under [MIT](LICENSE-MIT) or [Apache-2.0](LICENSE-APACHE).
