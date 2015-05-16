require 'rails_helper'

context 'an event can be created' do
  scenario 'no events have been created' do
    new_user
    visit '/users/1'
    click_link 'View events'
    expect(page).to have_content 'No events yet'
  end

def new_user
    visit '/'
    click_link 'Sign up'
    fill_in 'Email', with: "test2@test.com"
    fill_in 'user_password', with: "testtest"
    fill_in 'user_password_confirmation', with: "testtest"
    click_button 'Sign up'
  end
end