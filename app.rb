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

end
