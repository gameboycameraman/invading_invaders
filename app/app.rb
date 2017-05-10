require 'sinatra'

class Website < Sinatra::Base

  get '/' do
    erb :'home'
  end

end
