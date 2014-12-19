require 'rails_helper'

feature 'User signs up for an account' do
  scenario 'Succesfully' do
    visit root_path
    click_link 'Sign Up'
    fill_in 'Username', with: 'beelzebub'
    fill_in 'Password', with: 'test$#@!'
    fill_in 'Password confirmation', with: 'test$#@!'
    fill_in 'Email', with: 'beelzebub@yahoo.com'
    click_button 'Submit'
    expect( page ).to have_content('A message with a confirmation link has been sent to your email address.')
  end

end
