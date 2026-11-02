#!/usr/bin/env bash
# Validates the Kiro Crew app layout: manifest fields, referenced files, skill frontmatter.
set -euo pipefail
fail=0
err() { echo "✖ $*" >&2; fail=1; }

jq empty app.json || { echo "✖ app.json is not valid JSON" >&2; exit 1; }
for f in name version displayName description; do
  [ "$(jq -r ".$f // empty" app.json)" ] || err "app.json: missing required field '$f'"
done
jq -r '.name' app.json | grep -Eq '^[a-z0-9]+(-[a-z0-9]+)*$' || err "app.json: name must be kebab-case"
jq -r '.version' app.json | grep -Eq '^[0-9]+\.[0-9]+\.[0-9]+$' || err "app.json: version must be semver"

for a in $(jq -r '.agents[]?' app.json); do
  [ -f "$a" ] || { err "agent file not found: $a"; continue; }
  jq empty "$a" || err "invalid JSON: $a"
  sop="$(dirname "$a")/$(jq -r '.prompt' "$a" | sed 's#^file://##')"
  [ -f "$sop" ] || err "$a: prompt file not found: $sop"
done

for s in $(jq -r '.skills[]?' app.json); do
  md="$s/SKILL.md"
  [ -f "$md" ] || { err "skill missing SKILL.md: $s"; continue; }
  name="$(sed -n 's/^name: *//p' "$md" | head -1)"
  [ "$name" = "$(basename "$s")" ] || err "$md: frontmatter name '$name' must match folder '$(basename "$s")'"
  grep -q '^description: ' "$md" || err "$md: missing description"
done

bad_crons="$(jq -r '[.crons[]? | select((has("every") or has("cron_expr")) | not) | .name] | join(", ")' app.json)"
[ -z "$bad_crons" ] || err "cron(s) without 'every' or 'cron_expr': $bad_crons"

[ "$fail" -eq 0 ] && echo "✔ Crew app is valid."
exit "$fail"
