# Travel API, v1

#### This is a API Application built using Ruby on Rails.  July 21, 2017

#### By _**Tyler Stephenson**_

## Description

This is an API that includes data for an animal shelter. It includes multiple scopes listed below for querying.


Users can access:
- GET requests for animals currently at the shelter.

Authenticated users can access:
- POST, PATCH, PUT, DELETE requests for animals currently at the shelter

Scopes:
- Filters animal by name, species, age, breed, and random destinations

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

<!-- The application is seeded using `faker`.  It seeds 50 destinations and variable number of reviews for each university.

There are 15 random users in the database and one specified:
name: 'Qwerty',
email: "qwerty@email.com",
password: 'password' -->

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Postgres](https://www.postgresql.org/)
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)

## Installation

In your terminal:
* `git clone `
* `cd `
* `bundle install`
* Open another terminal window and type `postgres`.  Leave this window open.
* In your first terminal window type:
* `rails db:setup`
* `rails db:test:prepare`

This application uses JWT Tokens.  To configure, you must authenticate the seeded user to generate a token.  In your terminal, run:

`curl -X POST -d email="qwerty@email.com" -d password="password" http://localhost:3000/v1/auth_user`

You will need the auth_token from curl to run queries via Postman.


* URL: localhost:3000/v1/
* Header Key: Authorization
* Header Value: 'your-own-token-goes-here'

## Development server

Run `rails s` for a dev server. It will be servered on `http://localhost:3000/`, by default.

* If you would like to make changes to this project, do so in a text editor.
* Make frequent commits with detailed comments.
* Submit changes via pull request.

## Running tests

This app uses RSpec and Shouldamatchers for testing.
Run `rspec` in terminal to test.


## Performing Searches

See table below for possible searches and an example of performing in Postman/CURL.

#### Destination Searches

<!-- | Parameter | Sample Value | Description |
|:----------:|:------------:|:------------|
| name_scope |  Disneyland | The destination's name; searches for similar match without case sensitivity. |
| city_scope |    Portland   |  The city of a destination; returns all destinations of similar city name, regardless of case input.  |
| locale_scope | OR |    Returns state or province of the destination provided. |
| country_scope | USA |    Returns country of the destination provided. |
| mostReviews | 3 | Depending on integer input, will return destinations with most reviews; in this case, will return 3 destinations |
| random | 5 | Depending on integer input, will return a number of random destinations; in this case, will return 5 random destinations | -->

#### Example Destination Searches

<!-- Postman:

in the Headers section the key-value pair is:
Authorization, your-own-token-from-curl-goes-here


1)  Get all destinations.
* select GET and type in :
```
http://localhost:3000/v1/destinations?api_key=your_api_key
```

2) Get all destinations with word "Enchanted" in destination name.
* select GET and type in :
```
http://localhost:3000/v1/destinations?name_scope=Enchanted&api_key=your_api_key
```

3) Get the destination with word "Enchanted" and the most reviewed destination in one query:
```
http://localhost:3000/v1/destinations?name_scope=Enchanted&mostReviews=1&api_key=your_api_key
```

4) Get second page of all destinations
* select GET and type in:
```
http://localhost:3000/v1/destinations?page=2&api_key=your_api_key
``` -->

#### Reviews Searches

<!-- | Parameter | Sample Value | Description |
|:---------:|:------------:|:------------|
| heading_scope | Amazing | Returns all the reviews that contain the word 'Amazing' in the heading |
| content_scope | Paris   | Returns all the reviews that contain the word 'Paris' within the body of the review |
| rating_scope | 2 | Returns all the reviews matching the rating value provided; in this case, will return all reviews rating the destination a 2. |
 -->

#### Example Reviews Searches

<!-- 1) Get all reviews for a destination, in this case, destination id is 51.
```
http://localhost:3000/v1/destinations/51/reviews?api_key=your_api_key
```

2) Get all reviews for a destination, in this case, destination id is 51, where the rating is 5.
```
http://localhost:3000/v1/destinations/51/reviews?rating_scope=5&api_key=your_api_key
``` -->

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
