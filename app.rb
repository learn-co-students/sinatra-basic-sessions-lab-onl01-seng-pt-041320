require_relative 'config/environment'

class App < Sinatra::Base 
    configure do
        enable :sessions
        set :session_secret, "5u8x/A%D*G-KaPdSgVkYp3s6v9y$B&E("
    end

    get "/" do

        erb :index
    end

    post "/checkout" do
        session['item'] = params[:item]
        @session = session   
    
        erb :checkout
    end
end