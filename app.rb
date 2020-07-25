require_relative 'config/environment'

class App < Sinatra::Base

#set a session_secret
    configure do
        enable :sessions
        set :session_secret, "Go-go dancer"
    end

#GET request to the route '/'
    get '/' do
        erb :index
    end

#/checkout, should take the params from the form and add it to the session hash
    post '/checkout' do
        @item = session
        @item[:item] = params[:item]
        @item[:item]
    end

end