require 'spec_helper'

feature 'Auth Signup:' do
  scenario 'Homepage has a signup link' do
    visit '/'
    click_link 'signup'
    page.should have_content('Sign up for Linkr')
  end

  scenario "Allows the creation of new accounts" do
    visit signup_path
    fill_in 'Nickname', :with => "jack"
    fill_in 'Email', :with => "jack@example.com"
    fill_in 'Password', :with => "password"
    fill_in 'Password confirmation', :with => "password"
    click_button "Sign-up with Linkr"
    page.should have_content("successfully")
  end
end
