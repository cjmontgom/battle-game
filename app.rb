require 'sinatra/base'

class Battle < Sinatra::Base
  # set :sessions, true
  # set :foo, 'bar'

  get '/' do
    'Hello Battle!'
  end
end
