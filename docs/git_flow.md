# Git Workflow and Branching Strategy

### Strategy Overview

This service adheres to the [GitFlow](https://nvie.com/posts/a-successful-git-branching-model/) branching logic to manage development. As such, it consists of the following branch types: 

- main: source code in a production-ready state
- develop: source code containing the latest development stages
- feature/*: used to develop new features for future releases
- release/*: used to support the preparation of new production releases
- hotfix/*: used to quickly resolve a critical bug in production without interrupting work on the development branch

### Usage Guide


| Type          | Lifecycle                                        | Branches from | Merges into  | Usage                                          |
| ------------- | ------------------------------------------------ | ------------- | ------------ | ---------------------------------------------- |
| **main**      | perpetual                                        | —             | —            | Production                                     |
| **develop**   | perpetual                                        | main          | —            | Integrates ongoing changes during developments |
| **feature/*** | feature development lifecycle merged and deleted | develop       | develop      | New features                                   |
| **release/*** | release development lifecycle merged and deleted | develop       | main develop | stable release staging and versioning          |
| **hotfix/***  | bug fix lifecycle merged and deleted             | main          | main develop | Urgent fixes to production                     |


### Branch Protection

`main` and `develop` are protected.