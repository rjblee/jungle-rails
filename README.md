# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Screenshots
!["Screenshot of URLs (home) page"](https://asukakuwahara.com/static/ac06011cef20b0c25e28ce40842f553a/af144/jungle-rails.png)
!["Screenshot of Register page"](https://raw.githubusercontent.com/jonosue/jungle-rails/master/docs/new-user-registration.png)
!["Screenshot of Cart page"](https://raw.githubusercontent.com/jonosue/jungle-rails/master/docs/stripe-payment.png)
!["Screenshot of Order page"](https://raw.githubusercontent.com/jonosue/jungle-rails/master/docs/order-confirmation.png)


## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
