require './spec/helpers/web_helpers.rb'
require 'rails_helper'
RSpec.feature 'User post', type: :feature do
  before(:each) { visit('/') }
  scenario 'user can create a new post' do
    sign_up
    click_link('new vPost')
    fill_in('Title', with: 'My post title')
    fill_in('Description', with: 'My Post Description')
    fill_in('Image URL', with: 'https://vignette.wikia.nocookie.net/googology/images/f/f3/Test.jpeg/revision/latest?cb=20180121032443')

    click_button('share vPost')
    save_and_open_page
    expect(page).to have_content("vGram\nyou are signed in as testuser Logout\nnew vPost\ntestuser\nMy post title\nMy Post Description")
      end
end 