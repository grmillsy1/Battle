def sign_in_and_play
  visit ('/')
  fill_in "player_1", with: "Uno"
  fill_in "player_2", with: "Dos"
  click_button "Submit names"
end

def attack
  click_button "Attack!!"
  click_button 'OK'
end
