require 'discordrb'

bot =  Discordrb::Commands::CommandBot.new token: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', application_id: 179637320188821507, prefix: '!'

bot.command :Coinflip do |event|
  coin = rand(2)
  side = ''
  if(coin == 0)
    side= 'Tails'
  elsif(coin == 1)
    event.respond "Heads"
    end
  event.respond 'Coin Flip Result - '+side
end

bot.run
