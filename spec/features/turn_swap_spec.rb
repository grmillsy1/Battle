require './app.rb'

feature 'swap player turns' do
  scenario 'players swap turns' do
    sign_in_and_play
    click_button "Attack!!"
    click_button 'OK'
    click_button "Attack!!"
    expect(page).to have_content('Dos attacked Uno')
    expect(page).to have_content('Uno: 50HP')
  end
end
