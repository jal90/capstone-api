# Mechanic Mate v1

An app to help you keep track of maintenance on your vehicles
Log in and create a vehicle with some basic information, then create
many 'works' for that vehicle, which will log the type of work, and the date
and mileage during which it happened.

Live site: https://jal90.github.io/capstone-client/

Client repo: https://github.com/jal90/capstone-client

Server: https://jal90-capstone-api.herokuapp.com/

##### Tech used: Ruby Rails PSQL SQL


#### For future iterations:
  * Get a query index controller action working. Inside the works controller index
  I want it to accept query params from the client so it can do a GET all works
  specifically for that vehicle. Reason being that sometimes getting the vehicle and
  calling vehicle.works in the client runs into async issues where it hasn't loaded
  all the vehicles works yet. As a workaround, I do a GET to all works when user makes a GET to a vehicle. This isn't performant, as many of the works gotten may be for other vehicles.

#### Process:

  Started with user stories to get an idea of what the app would do.
  Then did ERD, since I needed to know what my page would be rendering.
  Then made detailed (for me) Wireframes that showed all the key elements of the page
  After that, coded curl scripts, then controller actions.

My problem solving strategy included reading lots of Rails docs because I forgot how
  most things worked, like generating and running migrations and how to set up those
  relationships. Ended up hardcoding some things that weren't in the migration files so
  heroku didn't know what was happening.


Link to ERD:  https://imgur.com/a/tCHWP

## API End Points

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| DELETE | `/sign-out`            | `users#signout`   |
| PATCH  | `/change-password`     | `users#changepw`  |
| GET    | `/vehicles`            | `vehicles#index`  |
| POST   | `/vehicles`            | `vehicles#create` |
| GET    | `/vehicles/:id`        | `vehicles#show`   |
| PATCH  | `/vehicles/:id`        | `vehicles#update` |
| DELETE | `/vehicles/:id`        | `vehicles#destroy`|
| GET    | `/works`               | `works#index`     |
| POST   | `/works`               | `works#create`    |
| GET    | `/works/:id`           | `works#show`      |
| PATCH  | `/works/:id`           | `works#update`    |
| DELETE | `/works/:id`           | `works#destroy`   |
