require './app.rb'

feature 'Hit points' do
  scenario "Players see each other's hit points" do
    sign_in_and_play
    expect(page).to have_text("Dos: 60HP")
  end
end
