require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/display-puppy' do
        @pup = Puppy.new(params[:name], params[:breed], params[:age])
        #@pup = Puppy.new(params)
        erb :display_puppy
    end

end