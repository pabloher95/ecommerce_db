# Database - PostgreSQL for data persistence

## Overview

PostgreSQL schema for the e-commerce platform, providing tables, seed data and init scripts. Used by the `product-service` and `order-service` services. 

The schema creates two tables: 

- `products`: product catalog (id, name, price, description) 
- `orders`: orders with product reference and status

## Prerequisites

- PostgreSQL 14+
- Docker and Docker Compose (when using containerized deployments)

## Configuration

Use env.example to configure environment variables, making sure to change default values to desired custom configuration

## Deployment

- clone repo: `git@github.com:pabloher95/ecommerce_db.git`
- copy env template and configure: `cp .env.example .env`

### local deployment

- start postgreSQL service: `brew services start postgresql` (on Mac)
- create database: `createdb ecommerce`
- run init script: `psql -d ecommerce -f src/init.sql`
- verify table contents in `ecommerce` db: `psql -d ecommerce -c "\dt"`

### containerized deployment

## Contributions

As per GitFlow standards (see [docs/git_flow.md](docs/git_flow.md) for details):

- `main` and `develop` branches are read-only
- contributors working on new features should branch from `develop` branch using the `feature/*` naming convention and submit a pull request to merge to `develop`
- contributors working on packaging releases should branch from `develop` branch using the `release/*` naming convention and submit a pull request to merge to `main` and `develop`
- contributors working on fixing a bug in live deployment should branch off from `main` branch using the `hotfix/*` naming convention and submit a pull request to merge to `main` 

