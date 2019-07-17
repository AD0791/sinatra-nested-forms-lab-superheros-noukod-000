require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'../views/super_hero'
    end

    post '/team' do
      binding.pry
      @team_name = params['team']['name']
      @team_name = params['team']['motto']
      erb :'../views/team'
    end

end
