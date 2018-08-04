require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    binding.pry 
    @analyzed_text = PigLatinizer.new
    @analyzed_text.piglatinize(params[:user_phrase])
    binding.pry 
    erb :results
  end 
end