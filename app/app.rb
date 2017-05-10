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

  get '/tutorials/colour' do
    erb :'colour'
  end

  get '/tutorials/sprites' do
    erb :'sprites'
  end

  get '/about_us' do
    erb :'about_us'
  end

  get '/sources' do
    erb :'sources'
  end



end
