require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "5XadViSdD7gA0tq2mN4y"
    end

    get '/' do
        @session = session

        erb :index
    end

    post '/checkout' do
        session['item'] = params[:item]
        @session = session
        erb :checkout
    end
end