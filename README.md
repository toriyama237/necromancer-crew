# Necromancer Council

[![CI](https://github.com/toriyama237/necromancer-crew/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/toriyama237/necromancer-crew/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Conventional Commits](https://img.shields.io/badge/commits-conventional-fe5196.svg)](https://www.conventionalcommits.org/en/v1.0.0/)
[![Kiroween 2026](https://img.shields.io/badge/Kiroween-2026-ff7518.svg)](https://kiroween.devpost.com/)
[![Built with Kiro](https://img.shields.io/badge/built%20with-Kiro-7057ff.svg)](https://kiro.dev/)
[![Kiro Crew app](https://img.shields.io/badge/Kiro%20Crew-app-7057ff.svg)](https://kiro.dev/docs/crew/)
[![Open issues](https://img.shields.io/github/issues/toriyama237/necromancer-crew.svg)](https://github.com/toriyama237/necromancer-crew/issues)
[![Last commit](https://img.shields.io/github/last-commit/toriyama237/necromancer-crew/develop.svg)](https://github.com/toriyama237/necromancer-crew/commits/develop)
[![Main project](https://img.shields.io/badge/main%20project-necromancer-2ea44f.svg)](https://github.com/toriyama237/necromancer)

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
