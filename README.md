# What's this?
- this is the very [Ruboty](https://github.com/r7kamura/ruboty)
- expected to deploy to `Heroku`, but you can exec on any environment

# Prepare
- you prepare `.env` file
- the sample `.env` file is included in this repository

# How to deploy to Heroku
- it is easy to deploy to `Heroku`
    - 1. create app in `Heroku`
    - 2. `git push heroku master` or integrate `Heroku` with your `GitHub` repository
- app released, already `Ruboty` is running!
- if the dyno of `Ruboty` stops, you scale it

# Gems
- `ruboty`
- `ruboty-twitter`
- `ruboty-google_image`
- additionally, [many gems for `Ruboty` exist](https://rubygems.org/search?utf8=%E2%9C%93&query=ruboty-)

# Tips
- `Ruboty` refers the environment variables for configuration
    - so you should use `Procfile` with `foreman` or `dotenv` gem
- as a general rule, the logic of bot must be implemented in gem file
    - however, you can specify the logic file with `--load` option as below

```bash
$ bundle exec ruboty --load my_ruboty_logic.rb
```

- so in my case, I create the main file to load, which includes other logic files
    - if I wanna modify existing gem file's logic, I override it in the loaded file
- the name of the bot can be defined by environment variable
    - as `ROBOT_NAME`
    - the default bot name is `ruboty`
- these are operation methods
    - do reply (basic behavior)
        - `message.reply(reply_content)`
    - from username
        - `message.from_name`
- the example of replying
    - `message.reply("@#{message.from_name} 🍻🍻🍻🍻🍻")`

# NOT GOOD
- the test codes aren't written
- the exception handling isn't written
    - so if the exception occurs, `Ruboty` stops all operations

# LICENSE
- [MIT LICENSE](LICENSE)
