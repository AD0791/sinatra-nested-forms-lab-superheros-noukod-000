require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'../views/super_hero'
    end

    post '/team' do
      #binding.pry
      @team_name = params['team']['name']
      @team_motto = params['team']['motto']

      @member1_name = params['team']['members'][0]['name']
      @member1_power = params['team']['members'][0]['power']
      @member1_bio = params['team']['members'][0]['bio']

      @member2_name = params['team']['members'][1]['name']
      @member2_power = params['team']['members'][1]['power']
      @member2_bio = params['team']['members'][1]['bio']

      @member3_name = params['team']['members'][2]['name']
      @member3_power = params['team']['members'][2]['power']
      @member3_bio = params['team']['members'][2]['bio']
      erb :'../views/team'
    end

end
