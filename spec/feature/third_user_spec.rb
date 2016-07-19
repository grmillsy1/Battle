require '../Battle/app'
require 'spec_helper'

feature 'attack' do
  scenario 'attack second player, get confirmation' do
    sign_in_and_play
    click_link('Click Pikachu to Attack')
    expect(page).to have_content "Thady attacked Georgia"
  end
end
