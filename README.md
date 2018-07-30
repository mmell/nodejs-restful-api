# nodejs-restful-api
**Sample JWT interactions**
This is an implementation of the excellent tutorial detailing set of simple JWT interactions.

[Full tutorial](https://medium.freecodecamp.org/securing-node-js-restful-apis-with-json-web-tokens-9f811a92bb52)

## Get Running
`brew` is OSX-only.
Node 8.10 is the currently the latest available on AWS Lambda so we're using that.
Mongo runs on [Docker](https://www.docker.com/community-edition) in `start:db`.

```bash
brew install nvm yarn
nvm install 8.10 && nvm use 8.10
yarn install
yarn db:start
yarn start
```

## Development
[Postman](https://www.getpostman.com/) helps with interacting with your server in a nice GUI.

- POST localhost:3001/api/auth/register
  - body:
    - `x-www-url-form-encoded`
      - name: Mike
      - email: example@gmail.com
      - password: secret!

- POST localhost:3001/api/auth/login-
  - body:
    - `x-www-url-form-encoded`-
      - email: example@gmail.com
      - password: secret!

- Copy the `token`.

- GET localhost:3001/api/auth/me
  - Headers
    - x-access-token <TOKEN>


![RESTful API design with Node.js](https://cdn-images-1.medium.com/max/2000/1*jjYC9tuf4C3HkHCP5PcKTA.jpeg "RESTful API design with Node.js")

How to create a RESTful CRUD API using Nodejs?

This tutorial will demo how to set up a bare bones
API using mongodb as the database.

It consist of a User model and controller. The model
defines the data, and the controller will contain all
the business logic needed to interact with the database.

It has a db file which will be used to
connect the app to the database, and an app file used
for bootstrapping the application itself.

The server file is used to spin up the server and tells the
app to listen on a specific port.
