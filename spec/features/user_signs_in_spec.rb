require 'rails_helper'


feature 'User can sign in and out of their account' do
  before :all do
    @user = User.new
    @user.username = 'Foobaz'
    @user.email = 'foo@bar.com'
    @user.password = 'blahblahblah'
    @user.skip_confirmation!
    @user.save
  end

  scenario 'Sign In and Out' do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
    expect( page ).to have_content("Hello #{@user.email}!")
    visit root_path
    click_link 'Sign out'
    expect( page ). to have_content('Signed out successfully.')
  end

#  scenario 'Sign Out' do
#    visit root_path
#    click_link 'Sign out'
#    expect( page ). to have_content('Signed out successfully.')
#  end
end
