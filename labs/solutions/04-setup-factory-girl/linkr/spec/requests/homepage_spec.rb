require 'spec_helper'

feature 'Homepage:' do
  
  scenario 'Contains welcome text' do
    visit '/'
    page.should have_content('Welcome to Linkr')
  end
end

