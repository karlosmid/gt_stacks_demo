# gt stacks — 5 minute live demo

Repo: https://github.com/karlosmid/gt_stacks_demo
The code for each step is already written in `~/repos/goatmire2026/snippets/`, so you
only run `cp` + `gt`, with no live typing.

The stack you build (each PR is based on the one below it):

```
main
 └─ add-goat     Goatmire.Goat struct
     └─ add-herd     Goatmire.Herd (uses Goat)
```

---

Also: make the terminal font big, turn on do-not-disturb, and open
https://github.com/karlosmid/gt_stacks_demo/pulls in a browser tab.

---

## 0:00 — Why stacks (≈30s, just talk)

> One big PR is slow to review. Stacked PRs are small PRs that build on each other,
> so reviewers review one small diff at a time and you never wait to keep working.
> `gt` is a tiny bash script: it stores each branch's parent in git config.

## 0:30 — Build a stack (≈1 min)

gt create

## 1:30 — Submit the stack (≈45s)

gt submit

## 2:15 — bug in root pr, same line, restack

## 3:15 — new commit in main branch, gt sync, provoke conflict

---

## If something goes wrong
