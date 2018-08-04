require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/' do 
    @user_text = params[:user_text].strip)
    
    erb :results
  end 
end