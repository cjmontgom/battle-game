require 'sinatra/base'
# require 'capybara'
# require 'capybara/rspec'
# require 'rspec'

class Battle < Sinatra::Base
  # set :sessions, true
  # set :foo, 'bar'

  get '/' do
    'Testing infrastructure working!'
  end

  get '/start_fight' do
    erb :start_a_fight
  end

  post '/fight' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    # erb(:index)
    p params
  end



end
