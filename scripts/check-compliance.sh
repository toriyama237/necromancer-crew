#!/usr/bin/env bash
# Guards the Kiroween 2026 submission requirements.
set -euo pipefail
fail=0
err() { echo "✖ $*" >&2; fail=1; }
[ -d .kiro ] || err "/.kiro directory is missing at the repository root."
git check-ignore -q .kiro 2>/dev/null && err "/.kiro is git-ignored. This can disqualify the submission."
[ -f LICENSE ] || err "LICENSE file is missing."
[ "$fail" -eq 0 ] && echo "✔ Hackathon compliance checks passed."
exit "$fail"
