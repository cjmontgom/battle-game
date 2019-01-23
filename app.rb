require 'sinatra/base'


class Battle < Sinatra::Base
  set :sessions, true

  get '/' do
      erb :index
  end

  post '/name' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :play
  end

  post '/attacked' do
    redirect '/notify_attack'
  end

  get '/notify_attack' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :notify_attack
  end

end
