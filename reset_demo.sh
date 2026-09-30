#!/usr/bin/env bash
# Reset karlosmid/gt_stacks_demo to the pre-demo state (tag demo-start):
# closes open PRs, deletes every non-main branch (local + remote), and
# force-pushes main back to demo-start. Run between rehearsals.
set -euo pipefail

cd "$(dirname "$0")/gt_stacks_demo"
git checkout -q main

for n in $(gh pr list --state open --json number -q '.[].number'); do
  gh pr close "$n" >/dev/null && echo "closed PR #$n"
done

git fetch -q --prune origin
for b in $(git for-each-ref --format='%(refname:lstrip=3)' refs/remotes/origin/ | grep -vE '^(main|HEAD)$' || true); do
  git push -q origin --delete "$b" && echo "deleted origin/$b"
done

for b in $(git for-each-ref --format='%(refname:short)' refs/heads/ | grep -v '^main$' || true); do
  git branch -q -D "$b" && echo "deleted $b"
  git config --remove-section "branch.$b" 2>/dev/null || true
done

git reset -q --hard demo-start
git clean -qfd
git push -q --force origin main
echo "✓ reset to demo-start"
