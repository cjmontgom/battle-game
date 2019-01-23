require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  set :sessions, true

  get '/' do
      erb :index
  end

  post '/name' do
    @player1 =  Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    $game = Game.new(@player1, @player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attacked' do
    redirect '/notify_attack'
  end

  get '/notify_attack' do
    @game = $game
    $game.attack(@game.player2)
    erb :notify_attack
  end

end
