# Git Workflow and Branching Strategy

### Strategy Overview

This service adheres to the [GitFlow](https://nvie.com/posts/a-successful-git-branching-model/) branching logic to manage development. It consists of the following branch types: 


| Type        | Lifecycle | Originating branch | Target branch        | Purpose                                       |
| ----------- | --------- | ------------------ | -------------------- | --------------------------------------------- |
| `main`      | perpetual | —                  | —                    | Production                                    |
| `develop`   | perpetual | `main`             | —                    | Integrates ongoing changes during development |
| `feature/*` | temporary | `develop`          | `develop`            | develop new features                          |
| `release/*` | temporary | `develop`          | `main` and `develop` | release staging and versioning`               |
| `hotfix/`*  | temporary | `main`             | `main` and `develop` | Urgent fixes to production                    |


### Branch Characteristics

#### `main`: 

- code in production-ready state
- no direct commits
- includes branch protection
- usage:
  - stable, live software deployment

#### `develop`:

- code containing latest completed development changes
- no direct commits
- includes branch protection
- usage:
  - takes in changes from `feature` and `release` branches
  - merge into `main` once changes are stable and ready to be packaged into a new release

#### `feature/*`: 

- development of new features for future releases
- exists as long as the feature is in development
- usage:
  - branch off from `develop`
  - work on new feature
  - incorporate finished feature into `develop`, or discard changes
  - delete branch

### `release/*`:

- supporting the preparation of new production releases that include previously developed features for a specific version, checking for last minute fixes and documenting version metadata.
- exists as long as the new release is being prepared
- usage: 
  - branch off from `develop` *after* merging all new features targeted for release
  - Update version information and apply necessary bug fixes
  - merge into `main`  for deployment
  - merge into `develop` to keep future releases up to date with fixes
  - delete branch

### `hotfix/`*:

- quickly resolve a critical bug in live production without interrupting ongoing development work
- exists only while bug is solved
- usage:
  - branch off from `main`
  - fix the bug
  - merge into `main` to update live deployment with fix
  - merge into `develop` to ensure that future releases include bug fix
  - optional:  merge into open `release`branch which will eventually merge into `develop`
  - delete branch

### Branch Protection



