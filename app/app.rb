require 'sinatra'

class Website < Sinatra::Base

  get '/' do
    erb :'home'
  end

  get '/set_up' do
    erb :'set_up'
  end

  get '/tutorials' do
    erb :'tutorials'
  end

  get '/sources' do
    erb :'sources'
  end



end
