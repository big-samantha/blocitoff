require 'rails_helper'

feature 'User signs up for an account' do
  scenario 'Succesfully' do
    visit root_path
    click_button 'Sign Up'
    fill_in 'Username', with: 'beelzebub'
    fill_in 'Password', with: 'test$#@!'
    fill_in 'Email Address', with: 'beelzebub@yahoo.com'
    click_button 'Submit'
    expect( page ).to have_content('Signed up successfully!')
  end
end
