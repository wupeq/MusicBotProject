require 'discordrb'

music_bot = Discordrb::Bot.new token: 'ODYyNDQzMTA0NDk2Nzc5Mjk1.YOYauw.XSNZuqugdTZeU69IfFzaSqvlQXs', client_id: 862443104496779295

# Messages
music_bot.message(with_text: 'Hello!') do |event|

    event.respond 'Hello! How are you doing? :smile:'

end

# Connect to Discord
music_bot.run