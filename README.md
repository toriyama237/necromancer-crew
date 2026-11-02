# Necromancer Council

[![CI](https://github.com/toriyama237/necromancer-crew/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/toriyama237/necromancer-crew/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Conventional Commits](https://img.shields.io/badge/commits-conventional-fe5196.svg)](https://www.conventionalcommits.org/en/v1.0.0/)

> A Kiro Crew app: four agents that bury, autopsy, resurrect and exorcise
> production failures captured by [Necromancer](https://github.com/toriyama237/necromancer).

> Status: early scaffold.

| Agent | Role |
|---|---|
| Gravedigger | Triage new deaths into graves, rank by impact |
| Coroner | Resurrect a tape and name the root cause |
| Necromancer | Write the smallest patch, in Rust or COBOL |
| Exorcist | Reject any patch that fails a replay of the original tape; add property-based tests |

A nightly cron (`night-of-the-living-graves`) replays every open grave against
the latest build.

## Requirements
- Kiro Crew
- `necro-mcp` on `PATH` (built from the Necromancer repo)

## Layout
```
app.json      Crew manifest
agents/       agent configs
sops/         agent instructions
skills/       agent skills
```

## Contributing
See [`CONTRIBUTING.md`](CONTRIBUTING.md).

## License
[MIT](LICENSE)
