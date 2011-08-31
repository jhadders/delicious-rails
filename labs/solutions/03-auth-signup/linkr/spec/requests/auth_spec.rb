require 'spec_helper'

feature 'Auth Signup:' do
  scenario 'Homepage has a signup link' do
    visit '/'
    click_link 'signup'
    page.should have_content('Sign up for Linkr')
  end
end
