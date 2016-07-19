
def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Thady'
  fill_in :player_2_name, with: 'Georgia'
  click_button 'Submit'
end
