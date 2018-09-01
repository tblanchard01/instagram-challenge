require 'rails_helper'
RSpec.feature 'User login', type: :feature do
  before(:each) { visit('/') }
  scenario 'user can click link to login' do
    expect(page).to have_content('Login')
  end
  scenario 'user can click link to signing up ' do
        expect(page).to have_content('Sign up')
      end
  
end