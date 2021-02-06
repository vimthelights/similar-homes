# Project Name

> Similar Homes Photo Carousel

## Summary
This component uses a postgresql database to find home listings
similar to a single listing, and renders them on a carousel via react.

## Snapshot of Component

![snapshot](component.png)

## Table of Contents

1. [Requirements](#Requirements)
1. [Development](#Development)
1. [Endpoints](#Endpoints)

> Some usage instructions

## Requirements

An `nvmrc` file is included if using [nvm](https://github.com/creationix/nvm).

- Node 6.13.0
- PostgreSQL 13.1

## Development

### Installing Dependencies

From within the root directory:

```sh
npm install : installs packages and dependencies necessary.

npm run build : Will run webpack bundler.

npm run seed : seeds the database.

npm run start : Will start the server and setup the project.

npm run test : runs testing suite and gives a coverage report.
```
## Routes
### GET
```javascript
/api/similar/:id
```
> Use:
Find a selection of listings similar to a
listing id
<br>
> Request:
Params: home id
<br>
> Response:
[{home1}, {home2}, {home3}...]

### POST
```javascript
/api/similar/:id
```
> Use:
Add a home listing
<br>
> Request:
body: {newHome}
> Response:
201 CREATED
### PATCH
```javascript
/api/similar/:id
```
> Use:
Change a listings info
<br>
> Resuest:
Params: home id
Body: { listing updates }
<br>
> Response:
200 OK
### DELETE
```javascript
/api/similar/:id
```
> Use:
Remove a home from the listings
<br>
> Request:
Params: home id
> Response:
200 OK

