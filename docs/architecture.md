# Architecture

Cargo discovers each `src/bin/dayNN/main.rs` as its own executable. Each binary owns its parser and part modules. The shared runtime dispatches reference and optional optimized solver functions. Tests use independently authored synthetic inputs.

`event.tsv` describes the year and ordered calendar. Its columns are day number, Gregorian release date and number of parts. This file can represent gaps in release dates and per-day part counts. Keep progress rows synchronized when changing event configuration. Scaffolding preserves existing source and notes. Adapt existing stubs by hand when reconfiguring their part counts.

`progress.tsv` tracks all configured day/part pairs. Its first two lines name the annual and framework versions. The column names are fixed. Set local progress to `not-started`, `in-progress`, `implemented` or `verified`. Feature fields take `yes` or `no`, and tests take `passed`, `failed` or `-`. Mean times accept unsigned integer nanoseconds or `-` when unmeasured. Enter short, original complexity notes or `-`. Verification requires a reference implementation and passing tests. Enable optimized availability after adding a reference implementation.

`cargo aoc complete` records a star after manual confirmation. A recorded star leaves local progress and tests independent. `cargo aoc readme` renders the marked README region deterministically from these files and discovered binaries. The release version in that section tracks the release being prepared while a new release commit is going through its checks. GitHub Releases provides the publication record.

Private inputs and generated artifacts are ignored. Keep tests, solution notes and any reviewed benchmark summaries separate from those files.

## 2026 calendar

The [official 2026 calendar](https://adventofcode.com/2026) confirms the December 1 opening at 00:00 EST (06:00 CET in Bratislava). The [organizer’s recurring schedule announcement](https://bsky.app/profile/was.tl/post/3m3qskpuqbs2m) specifies 12 days beginning December 1. The pre-event 2026 calendar has yet to list the individual days, so the tracked schedule applies December 1–12 and allows adjustment per day after the official calendar opens.

The Cargo dependency resolves to the commit tagged [aoc-rust v1.0.1](https://github.com/jikovec/aoc-rust/releases/tag/v1.0.1).
