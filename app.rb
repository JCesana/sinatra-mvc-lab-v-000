require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    @analyzed_text = PigLatinizer.new
    @analyzed_text.piglatinize(params[:user_phrase])
    
    erb :results
  end 
end