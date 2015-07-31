require_relative 'models/skimmit.rb'
require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/results' do    
    input = params[:text]
    @skimmit = highlight(input)
    erb :results
  end

end