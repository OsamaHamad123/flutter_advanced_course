# Merge instructions: fix "local changes would be overwritten by merge"

Short options (run in repo root):

1) Stash local changes (recommended if you want temporary save)
- git stash push -u -m "WIP before merging origin/development"
- git fetch origin
- git merge origin/development
- git stash pop   # then resolve any conflicts, commit, push

2) Make a WIP commit (if you want to keep changes in history)
- git add -A
- git commit -m "WIP: save local changes before merging"
- git fetch origin
- git merge origin/development
- fix conflicts if any, then push

3) If you prefer interactive helper script:
- chmod +x scripts/git-merge-helper.sh
- ./scripts/git-merge-helper.sh stash    # or 'commit'

Conflict resolution:
- Open conflicted files, look for conflict markers (<<<<<<< ======= >>>>>>>), edit, then:
  - git add <files>
  - git commit
  - git push

Notes:
- Ensure you really want to discard local uncommitted changes before using `git stash` and `git stash drop`.
- If unsure, create a branch to save current state:
  - git checkout -b save-my-work
  - git add -A && git commit -m "Save local work"
  - git checkout master && git fetch origin && git merge origin/development
