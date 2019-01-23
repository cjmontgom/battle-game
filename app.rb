require 'sinatra/base'

class Battle < Sinatra::Base
  # set :sessions, true

  get '/' do
      erb :start_a_fight
  end

  post '/fight' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    # erb(:index)
    p params
  end



end
