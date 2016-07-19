#require 'capybara'
require '../Battle/app'
require 'spec_helper'


feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Thady'
    fill_in :player_2_name, with: 'Georgia'
    click_button 'Submit'
    expect(page).to have_content 'Thady vs. Georgia'
end
end
