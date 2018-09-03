require './spec/helpers/web_helpers.rb'
require 'rails_helper'
RSpec.feature 'User login', type: :feature do
  before(:each) { visit('/') }
  scenario 'user can log link to login' do
    sign_up
    click_link('Logout')
    login 
    expect(page).to have_content("Signed in successfully.\nvGram\nyou are signed in as testuser Logout\nnew vPost")

  end
  scenario 'user can sign up' do
    sign_up 
    expect(page).to have_content("Welcome! You have signed up successfully.\nvGram\nyou are signed in as testuser Logout\nnew vPost")
      end
  
end