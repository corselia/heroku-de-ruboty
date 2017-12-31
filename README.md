# What's this?
- `heroku-de-ruboty`
- Ruboty on Heroku
    - deployed on Heroku and run this (manually)
    - be careful not to stop by non-access within 30 minutes
        - exec cron such as `$ curl https://foobar.herokuapp.com/`

# Tips
- I recommended using `dotenv` gem
    - Ruboty requires config value on environment variable
- the name of the bot can be defined by environment variable
    - as `ROBOT_NAME`
    - default bot name is `ruboty`
- operation methods
    - do reply
        - `message.reply`
    - from username
        - `message.from_name`
    - the example of reply
        - `message.reply("@#{message.from_name} 🍻🍻🍻🍻🍻")`

# LICENSE
- [MIT LICENSE](LICENSE)
