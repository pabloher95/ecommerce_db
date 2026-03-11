# Database - PostgreSQL for data persistence

## Overview

PostgreSQL-based schema to manage e-commerce data transactions.

## Prerequisites

- PostgreSQL
- Docker

## Deployment

clone repo: `git@github.com:pabloher95/ecommerce_db.git`

### local

- run PostgreSQL

### Docker container

- build container from image

## Environment setup

Use env.example to configure environment variables, making sure to change default values to desired custom configuration

## Development workflow

As per GitFlow standards (see docs/git_flow.md for details):
- `main` and `develop` branches are read-only
- contributors working on new features should branch from `develop` branch using the `feature/*` naming convention and submit a pull request to merge to `develop`
- contributors working on packaging releases should branch from `develop` branch using the `release/*` naming convention and submit a pull request to merge to `main` and `develop`
- contributors working on fixing a bug in live deployment should branch off from `main` branch using the `hotfix/*` naming convention and submit a pull request to merge to `main`
