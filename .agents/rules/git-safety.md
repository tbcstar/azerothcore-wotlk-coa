# Git safety

Applies to every agent working in this repository and to every agent it dispatches.

- Work on `main` in the main checkout and commit work there. This fork takes changes directly on `main`, so do not
  create per-task branches, worktrees or PRs for ordinary changes; `git push origin main` after verification is
  the expected publication. Never push to `upstream`, never force-push, never merge a PR unless the user asks.
- Never rewrite committed work: no `git reset` in any mode, no `git rebase`, no forced ref move over commits you
  did not create in this session. No `git clean -fd`, no tree-wide `git checkout -- .`/`git restore .`, no
  `git gc --prune=now`, no `git reflog expire`.
- `git commit --amend` only on an unpublished commit you made yourself in this session. Follow-ups to published
  work are new, tested, scoped commits.
- Before any operation that moves a branch tip over commits worth keeping, create a real ref
  (`git branch backup/<task>-<what> <sha>`); delete it once the branch is verifiably correct and report one left
  behind. Only committed content is protected: commit early rather than holding work in the working tree.
- A "before" state is never rebuilt by undoing history. Use `git stash` or a throwaway directory, and remember the
  verification rules: no pre-fix tree runs just to show a regression failing.
- Work in the main checkout on `main`. A dispatched helper shares that checkout rather than getting its own
  worktree and branch; name the files it may touch in the dispatch prompt and forbid every other path. Only the
  controller commits and pushes.
- One agent owns each build directory, database and gameplay stage at a time. Never run two builds or two
  gameplay stages in the same build directory; check for running `ninja`/`cmake`/`cl` processes first.
- A `Fixes #N` line belongs only on a commit whose issue was proved fixed. A reverted attempt leaves no `Fixes`
  line anywhere, including on the revert.
- Remove a temporary directory once the work is committed and pushed, after confirming it has no uncommitted,
  untracked or unpushed work. Report one you could not remove; never force it.
