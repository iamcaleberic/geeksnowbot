require 'telegram/bot'

token = ""

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/caleb'
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome to https://iamcaleberic.github.io")
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "I am the geeksnow bot, My commands are /caleb /map")
    end
  end
end
