# GIVEit-backend  [![Build Status](https://travis-ci.org/becc-mu/GIVEit-backend.svg?branch=master)](https://travis-ci.org/becc-mu/GIVEit-backend)

This is a 2-week final project we undertook at Makers.

This application consists of a [ReactJS front-end](https://github.com/MugeHasilci/GIVEit-frontend) and a Rails API, this repo houses the latter.

Here is a link to our app in production: https://giveit-backend.herokuapp.com/listings

## Features

Our app has the following features:
 - Signing up
 - Logging in / out
 - Creating, showing, updating and deleting listings

## Initial User Stories

These are the user stories we wrote to get ourselves started with the project and reach our MVP (we completed this by the end of the second day).

`````
As a user
So that I can make a request for help
I want to create a listing

As a user
So that I can find help on a map
I want to see the listing location on Google Maps

``````

## User interaction diagram



![image]()

## Our learning documentation
- [Here](https://trello.com/b/fCE5cFQb/giveit) is our card wall for the project
- [Here](https://github.com/MugeHasilci/GIVEit-frontend/wiki) is our learning log that we updated each day.
- [Here](https://medium.com/giveit-blog) is our blog that we updated with regular posts.

## Installing and running the app

First, clone this repository. Then:

```bash
> Download and Install Postgress 
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

## Contributing

Feel free to open a GitHub issue with anything you notice. Fork then clone the repository if you want to make any changes, then make a pull request with your changes. Changes must be approved in a pull request before being merged into the master branch.

## Team Members
[Muna Hussein](https://github.com/MHUS25) |
[Muge Hasilci](https://github.com/MugeHasilci) |
[Henry Cooksley](https://github.com/hnryjmes)  |
[Ryan Clark](https://github.com/RyanWolfen7)  |
[Rebecca Mulugeta](https://github.com/becc-mu)
