# Action Cable Google Maps

In this repo, I learn [Action Cable](https://github.com/rails/rails/tree/master/actioncable) and WebSockets, following the tutorial, [Action Cable and WebSockets: An in-Depth Tutorial](https://www.sitepoint.com/action-cable-and-websockets-an-in-depth-tutorial/) by Kyle Szives.

## Get started

Install dependencies

```
bundle install
```

Install Redis

```
brew install redis
```

Migrate database

```
bin/rake db:migrate RAILS_ENV=development
```

Start the cable server in one window

```
./bin/cable
```

Start the Rails server in yet another window

```
./bin/rails server
```

Start the Redis server in another window

```
redis-server
```

Navigate to [localhost:3000](localhost:3000) in different browsers.

## WebSockets

- the connection between a client and a server remains constant and connected
- either the client or the server has the ability to initiate a request or a message
- direct interaction between browser and server


## Action Cable

The `app/channels/` directory

```
├── app
│   ├── assets
│   ├── channels
│   │   ├── application_cable
│   │   │   ├── channel.rb
│   │   │   └── connection.rb
│   │   └── houses_channel.rb
```

#### `ApplicationCable::Connection`
- used for general authorization:
  + query the database for a specific user that is making the connection
  + ensure that they are allowed to listen

#### `ApplicationCable::Channel`
- the base class of all other channels
- perform shared logic that can be used between channels

#### `stream_from`
- used to subscribe to a string that we define

#### `stream_for`
- used when there is a particular record (or record and association) we want updates about
