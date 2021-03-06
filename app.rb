require 'sinatra/base'
require './lib/player'
require './lib/game'

#set :session_secret, 'super secret'
class Battle < Sinatra::Base
enable :sessions


get '/' do
  erb(:index)
end

post '/names' do
  player_1 = Player.new(params[:player_1_name])
  player_2 = Player.new(params[:player_2_name])
  $game = Game.new(player_1, player_2)
  redirect'/play'
end

get '/play' do
  @game = $game
  redirect '/gameover' if @game.gameover?
  erb :play
end

get '/gameover' do
  @loser = $game.player_1.name if $game.player_1.hit_points <= 0
  @loser = $game.player_2.name  if $game.player_2.hit_points <= 0
  erb :gameover
end

get '/attack' do
  @game = $game
  @player_1_name = $game.player_1.name
  @player_2_name = $game.player_2.name
  $game.attack($game.defender)
  erb(:attack)
end

get '/switchplayers' do
  $game.switch_turn
  redirect '/play'
end

  #start the server if ruby file executed directly
  run! if app_file == $0
end
