require 'spec_helper'

describe 'authentication', :type => :feature do
  describe 'signing in' do
    let(:user) { User.make! }

    it 'should allow people to log in' do
      visit new_user_session_path
      fill_in 'Email', :with => user.email
      fill_in 'Password', :with => 'password'
      click_button 'Sign in'
      page.should have_content 'successfully'
    end
  end
end
