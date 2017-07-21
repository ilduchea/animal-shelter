# Animal Shelter, v1

#### This is a API Application built using Ruby on Rails.  July 21, 2017

#### By _**Tyler Stephenson**_

## Description

This is an API that includes data for an animal shelter. It includes multiple scopes listed below for querying.


Users can access:
- GET requests for animals currently at the shelter.

Authenticated users can access:
- POST, PATCH, PUT, DELETE requests for animals currently at the shelter

Scopes:
- Filters animal by name, species, age, breed, and random animals

The application structure is outlined below.  

Models:
  - Animal
    - name - string
    - species - string
    - breed - string
    - age - integer

## User Stories

  * Endpoints for GET (all and by id), POST, PUT and DELETE.
  * A RANDOM endpoint that randomly returns a park/business/animal.
  * A second custom endpoint that accepts parameters (example: a SEARCH route that allows users to search by specific park names).
  * Model scopes should be used to process parameters from API calls.
  * At least one of the objectives from Monday's Further Exploration lesson (such as versioning, token authentication, or serialization).
  * Thorough exception handling.
  * Complete testing with request specs.
  * Randomized data with Faker or your own custom seed code.
  * A README that thoroughly documents all endpoints, including parameters that can be passed in.

## Database Seeding

The application is seeded using `faker`.  It seeds 42 animals.

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Postgres](https://www.postgresql.org/)
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)

## Installation

In your terminal:
* `git clone animal-shelter`
* `cd animal-shelter`
* `bundle install`
* Open another terminal window and type `postgres`.  Leave this window open.
* In your first terminal window type:
* `rails db:setup`
* `rails db:test:prepare`

<!-- This application uses JWT Tokens.  To configure, you must authenticate the seeded user to generate a token.  In your terminal, run:

`curl -X POST -d email="qwerty@email.com" -d password="password" http://localhost:3000/v1/auth_user`

You will need the auth_token from curl to run queries via Postman.


* URL: localhost:3000/v1/
* Header Key: Authorization
* Header Value: 'your-own-token-goes-here' -->

## Development server

Run `rails s` for a dev server. It will be servered on `http://localhost:3000/`, by default.

* If you would like to make changes to this project, do so in a text editor.
* Make frequent commits with detailed comments.
* Submit changes via pull request.

## Running tests

This app uses RSpec and Shouldamatchers for testing.
Run `rspec` in terminal to test.

## API Routes

- Random - GET `http://localhost:3000/random`
- Search - GET `http://localhost:3000/search?{params}`
- Index(all) - GET `http://localhost:3000/animals`
- Create - POST `http://localhost:3000/animals`
- Show - GET `http://localhost:3000/animals/{id}`
- Update - PATCH or PUT `http://localhost:3000/animals/{id}?{params}`
- Destroy - DELETE `http://localhost:3000/animals/{id}`

## Performing Searches

See table below for possible searches and an example of performing in Postman/CURL.

#### Animal Searches

| Parameter | Sample Value | Description |
|:----------:|:------------:|:------------|
| name_search |  Tiny | All animals with that name; searches for similar match without case sensitivity. |
| species_search |  dog | All animals of that species; searches for similar match without case sensitivity. |
| breed_search |  pitbull | All animals of that breed; searches for similar match without case sensitivity. |
| age_search |  5 | All animals with the age of 5. |


#### Example Animal Searches

Postman:

<!-- in the Headers section the key-value pair is:
Authorization, your-own-token-from-curl-goes-here -->


1)  Get all animals.
  * select GET and type in :
  ```
  http://localhost:3000/v1/animals
  ```

2) Get all animals with word "Tiny" in animal name.
  * select GET and type in :
  ```
  http://localhost:3000/v1/animals?name_search=tiny
  ```

3) Get all animals with the species of dog and the age of 5.
  * select GET and type in :
  ```
  http://localhost:3000/v1/animals?species_search=dog&age_search=5
  ```

## Technologies Used

* Ruby
* Rails
* JWT Gem
* Devise
* ActiveRecord
* Postgres
* Bundler
* Rake Gem
* HTML
* CSS
* Bootstrap
* ES6
* SimpleCov
* FactoryGirl

## License

MIT License

Copyright (c) 2017 Tyler Stephenson

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
