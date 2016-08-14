require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do


      erb :team
    end

    get '/team' do


    	erb :team
    end

    post '/teams' do
     @team = Team.new(params[:team])

	     params[:team][:members].each do |details|
	     	@hero = Hero.new(details)
	     end
        erb :root
    end

end
