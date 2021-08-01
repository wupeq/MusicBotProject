require 'discordrb'

music_bot = Discordrb::Commands::CommandBot.new token: 'ODYyNDQzMTA0NDk2Nzc5Mjk1.YOYauw.XSNZuqugdTZeU69IfFzaSqvlQXs', client_id: 862443104496779295, prefix: '~'

# Shutdown
music_bot.command(:shutdown) do |event|

    event.stop

end

# Connect to Discord
music_bot.run