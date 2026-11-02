# Necromancer Council

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

## License
[MIT](LICENSE)
