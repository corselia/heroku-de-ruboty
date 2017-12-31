# What's this?
- heroku-de-ruboty
- Ruboty on Heroku
    - deoployed on Heroku (manually)

# Tips
- I recommended using with `dotenv` gem
- the name of the bot can be defined by ENV
    - `ROBOT_NAME`
    - default name is `ruboty`
- methods
    - do reply
        - `message.reply`
    - username
        - `message.from_name`
    - the reply example
        - `message.reply("@#{message.from_name} 🍻🍻🍻🍻🍻)`

# LICENSE
- [MIT LICENSE](LICENSE)
