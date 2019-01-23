require 'sinatra/base'


class Battle < Sinatra::Base
  # set :sessions, true

  get '/' do
      erb :index
  end

  post '/fight' do
    @player1 = params[:player1]
    @player2 = params[:player2]
     erb :play
  end



end
