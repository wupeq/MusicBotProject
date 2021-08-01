#
#   MusicBot - Tesing version
#

require 'discordrb'

time = Time.now

information_file_object = File.open('./Resources/Informations.txt')
information_file_data = information_file_object.read
information_file_object.close

Prefix = '!'

music_bot = Discordrb::Commands::CommandBot.new token: 'ODYyNDQzMTA0NDk2Nzc5Mjk1.YOYauw.XSNZuqugdTZeU69IfFzaSqvlQXs', client_id: 862443104496779295, prefix: Prefix

# Commands
music_bot.command(:informations) do |event|

    event.respond(information_file_data)

end

music_bot.command(:picture) do |event|

    event.send_file(File.open('./Resources/CatPicture.png'))

end

music_bot.command(:time) do |event|

    ('The time is : ' + time.to_s)

end

# Connect to Discord
music_bot.run