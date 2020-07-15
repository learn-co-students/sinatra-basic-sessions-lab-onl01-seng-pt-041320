require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "italian_grinder"
  end

  get '/' do 
    erb :index
  end

  post '/checkout' do
    @new_item = session 
    @new_item[:item] = params[:item]
    @new_item[:item]

   
  end

  

end