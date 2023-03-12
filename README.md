# Shopify App Template - Rails 7 + Heroku + Postgres

This is a template for building a Shopify app using Ruby on Rails + React + Postgres + Heroku. It contains the basics for building a Shopify app.

### Tech Stack

This template includes:
- Rails
- Postgres
- Heroku
- Sidekiq
- Sentry

### Steps
- Clone [shopify-app-template-ruby](https://github.com/remy727/shopify-app-template-ruby)
- Install the ruby dependencies:
  ```shell
  $ cd web
  $ bundle install
  ```
- Run the [Rails template](https://guides.rubyonrails.org/rails_application_templates.html) script.
  ```shell
  $ cd web
  $ bin/rails app:template LOCATION=./template.rb
  ```
- Update `SHOPIFY_API_KEY` in `heroku.yml`
- Add Heroku Addons
  * [Heroku Postgres](https://elements.heroku.com/addons/heroku-postgresql)
  * [Heroku Data for Redis](https://elements.heroku.com/addons/heroku-redis)
- Add ENVs

  | ENV                        | Value                            |
  | -------------------------- | -------------------------------- | 
  | `HOST`                     | https://your-app.herokuapp.com   |
  | `RAILS_MASTER_KEY`         | Master Key                       |
  | `RAILS_ENV`                | production                       |
  | `RAILS_SERVE_STATIC_FILES` | 1                                |
  | `SHOPIFY_API_KEY`          | Shopify API Key                  |
  | `SHOPIFY_API_SCOPES`       | Shopify API Scopes               |
  | `SHOPIFY_API_SECRET`       | Shopify API Secret               |
  | `SHOPIFY_APP_NAME`         | Shopify APP Name                 |

- Deploy
- Run `heroku ps:scale worker=1`