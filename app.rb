require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  set :sessions, true

  before do
    @game = Game.instance
  end

  get '/' do
      erb :index
  end

  post '/name' do
    @player1 =  Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    @game = Game.create(@player1, @player2)
    redirect '/play'
  end

  # post '/vs-ai' do
  #   @player1 =  Player.new(params[:player1])
  #   @computer = Computer.new(params[:player2])
  #   @game = Game.create(@player1, @computer)
  # end

  get '/play' do
    erb :play
  end

  post '/attacked' do
    redirect '/notify_attack'
  end

  get '/notify_attack' do
    @game.attack(@game.players.last)
    if @game.dead?
      redirect '/game-over'
    else
      erb :notify_attack
    end
  end

  # get '/vs_' do
  #   @game.attack(@game.players.last)
  #   @game.switch_attacker
  #   if @game.dead?
  #     redirect '/game-over'
  #   else
  #     erb :notify_attack
  #   end
  # end

  get '/game-over' do
    erb :game_over
  end

  post '/switch' do
    @game.switch_attacker
    erb:switch
  end

end
