# schemaspy-repro

This repository reproduces an error with the Docker images `schemaspy/schemaspy:snapshot` and `schemaspy/schemaspy:latest`.

The file `schema.sql` is a dump of the database schema used for this test.

## Requirements

* Docker
* Docker Compose
* Node.js
* Yarn
* PostgreSQL

## Steps to reproduce failure with Docker

With `schemaspy/schemaspy:snapshot`:

```shell
bin/schemaspy
```

With `schemaspy/schemaspy:latest`:

```shell
SCHEMASPY_VERSION=latest bin/schemaspy
```

## Steps to reproduce success with Docker

```shell
SCHEMASPY_VERSION="6.1.0" bin/schemaspy
```

## Steps to prepare database outside Docker

If you would like to create the databases for this test outside of Docker then:

1. Install Node.js 18.15 (e.g., `asdf install`)
2. Install yarn 3.5.0 (e.g., `corepack enable && corepack prepare yarn@stable --activate`)
3. Run `yarn install`
4. Create a new database named `foo`
5. Generate a `.env` file with `yarn generate-env`
6. Reset the database with `yarn reset`

The database is now prepared and ready for use with SchemaSpy.
