require './app.rb'

feature 'losing player' do
  before do
    sign_in_and_play
    $game.player_2.instance_variable_set('@hit_points', 1)
  end
  scenario 'players 2 loses when hp = 0 ' do
    attack
    expect(page).to have_content('Dos is a loser')
  end
end
