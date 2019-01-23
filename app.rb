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
    @player1 = $game.player1
    @player2 = $game.player2
    erb :play
  end

  post '/attacked' do
    redirect '/notify_attack'
  end

  get '/notify_attack' do
    @player1 = $game.player1
    @player2 = $game.player2
    $game.attack(@player2)
    erb :notify_attack
  end

end
