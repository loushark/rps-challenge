require 'sinatra/base'

class RockPaperScissors < Sinatra::Base


  get '/home' do
      erb :home
  end

  post '/play' do
    $player = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

end
