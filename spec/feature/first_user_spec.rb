#require 'capybara'
require '../Battle/app'
require 'spec_helper'


feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Thady vs. Georgia'
  end
end