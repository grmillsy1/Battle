require '../Battle/app'
require 'spec_helper'

feature 'Hit points' do
  scenario 'view second players hit points' do
    sign_in_and_play
    expect(page).to have_content 'Georgia:100HP'
  end

end
