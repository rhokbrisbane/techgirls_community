# Tech Girls are Superheroes - Community

[Community area](http://community.techgirlsaresuperheroes.org/) for [Tech Girls are Superheroes](http://www.techgirlsaresuperheroes.org/)

Started on 06/12/14 at [RHoK Brisbane](http://rhokbrisbane.org/)

[Admin area](http://lvh.me:3000/admin)

## First admin user

| Email                   | Password   |
| :---------------------- | :--------- |
| admin@example.com       | password   |

## Requirements

* Ruby 2.1.5
* PostgreSQL

## Development setup

* Copy the project and install its dependencies:

        git clone git@github.com:rhokbrisbane/techgirls_communtiy.git ~/projects/techgirls_communtiy

        cd ~/projects/techgirls_communtiy

        cp config/database.yml.example config/database.yml

        cp .env.example .env

        bundle install

        rake db:setup
