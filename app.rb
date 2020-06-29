require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "6SadRiSdB9gI2tp0jN3w"
    end

    get '/' do
        @session = session
        #view:
        erb :index
    end

    post '/checkout' do
        session['item'] = params[:item]
        @session = session   
        #view:
        erb :checkout
    end
end