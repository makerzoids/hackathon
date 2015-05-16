require 'rails_helper'

context 'user not signed in and on the homepage' do
  it 'should see a sign in and sign up link' do
    visit '/'
    expect(page).to have_link 'Sign in'
    expect(page).to have_link 'Sign up'
  end
end
