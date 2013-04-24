# Konacha Demo #

## Getting set up ##

Install the app:

```
bundle install
```

Configure, create, migrate, and seed the database

```
cp config/database.yml/example config/database.yml
vim config/database.yml
bundle exec rake db:create db:migrate db:test:prepare
```
