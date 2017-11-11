require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player1 = params[:player_1]
    @player2 = params[:player_2]
    @singleplayer = true if @player2 == ""
    if @singleplayer == true
      erb :game
    else
      erb :multi_game
    end
  end

  post '/result' do
    @rock = params[:Rock]
    @paper = params[:Paper]
    @scissors = params[:Scissors]
    @lizard = params[:Lizard]
    @spock = params[:Spock]
    erb :result
  end
end