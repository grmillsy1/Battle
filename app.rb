require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super_secret'

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.opponent)
    erb(:attack)
  end

  get '/swap_turn' do
    redirect '/game_over' if @game.game_over?
    @game.swap_turn
    redirect '/play'
  end

  get '/game_over' do
    erb(:game_over)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
