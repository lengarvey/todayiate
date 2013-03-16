require 'spec_helper'

describe 'the homepage', :type => :feature do
  before :each do
    visit '/'
  end

  it 'should load on a simple get request' do
    page.should have_content('Track your meals')
  end

  context 'for guest users' do
    let(:user) { User.make! }

    it 'should allow people to log in' do
      click_link 'Sign in'
      page.status_code.should == 200
    end
  end

  context 'for logged in users' do
    before :each do
      sign_in
    end

    it 'should greet the logged in user' do
      page.should have_content 'Hello'
    end

    it 'should allow people to sign out' do
      click_link 'Sign out'
    end

    it 'should let allow a user to enter a food log' do
      pending
      # fill_in 'Log', :with => 'A cheese burger, fries and a 200ml coke'
      # click_button 'Submit'
      # page.status_code.should == 200
    end

  end

end
