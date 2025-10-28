fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## Android

### android firebase_distribution

```sh
[bundle exec] fastlane android firebase_distribution
```

Lane for Android Firebase App Distribution

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).

# GitHub Actions Workflow

## Android Fastlane With Firebase App Distribution Workflow

on:
  push:
    branches:
      - master
jobs:
  distribute_to_firebase:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout my repo code
        uses: actions/checkout@v2
      - name: Set up JDK 11
        uses: actions/setup-java@v2
        with:
          distribution: temurin
          java-version: "11"
      - name: Install Flutter
        uses: subosito/flutter-action@v2
        with:
          channel: stable
      - name: Setup Ruby
        uses: ruby/setup-ruby@v1
        with:
          ruby-version: "3.4.7"
          bundler-cache: true
          working-directory: android

      - name: Install gem dependencies (bundle install)
        run: bundle install --jobs 4 --retry 3 --path vendor/bundle
        working-directory: android

      - name: Build and Distribute App
        env:
          FIREBASE_CLI_TOKEN: ${{ secrets.FIREBASE_CLI_TOKEN }} # أو FIREBASE_SA_JSON
        run: |
          bundle exec fastlane android firebase_distribution
        working-directory: android

# go to repo root (works if run from anywhere inside repo)
repo_root="$(git rev-parse --show-toplevel 2>/dev/null || true)"
if [ -z "$repo_root" ]; then
  echo "Not inside a git repository."
  exit 1
fi
cd "$repo_root"

if git diff-index --quiet HEAD --; then
  echo "No local uncommitted changes. Proceeding to fetch & merge."
  git fetch origin
  git merge origin/development
  echo "Merge finished."
  exit 0
fi

echo "Uncommitted changes detected."
echo "Usage: ./scripts/git-merge-helper.sh [stash|commit]"
action="${1:-stash}"

if [ "$action" = "commit" ]; then
  echo "Creating a temporary WIP commit..."
  git add -A
  git commit -m "WIP: save local changes before merging origin/development"
  git fetch origin
  git merge origin/development
  echo "Merge finished. You can amend or reset the WIP commit if needed."
elif [ "$action" = "stash" ]; then
  echo "Stashing local changes..."
  git stash push -u -m "WIP before merging origin/development"
  git fetch origin
  git merge origin/development
  echo "Merge finished. To reapply your changes: git stash pop"
else
  echo "Unknown action: $action"
  echo "Use 'stash' (default) or 'commit'."
  exit 2
fi