require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'../views/super_hero'
    end

    post '/team' do
      binding.pry
      @team_name = params['team']['name']
      @team_motto = params['team']['motto']
      @member1_name = params['team']['members'][0]['name']
      erb :'../views/team'
    end

end
