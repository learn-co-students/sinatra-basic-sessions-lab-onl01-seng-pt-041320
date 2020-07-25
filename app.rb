require_relative 'config/environment'

class App < Sinatra::Base


    configure do
        enable :sessions
        set :session_secret, "Go-go dancer"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        @item = session
        @item[:item] = params[:item]
        @item[:item]
    end

end