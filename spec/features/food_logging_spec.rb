require 'spec_helper'

describe 'food logging', :type => :feature do
  context 'for logged in users' do
    before :each do
      sign_in
    end
    after :each do
      Capybara.reset_sessions!
    end

    it 'should allow me to enter a log of a meal' do
      visit new_meal_path
      fill_in 'Body', :with => 'Double cheeseburger, fries and a coke'
      click_button 'Add meal'
      page.should have_content 'Double cheeseburger'
    end

  end

  context 'for guests' do
    it 'should not allow me to enter a log of a meal' do
      visit new_meal_path
      current_path.should == new_user_session_path
    end
  end
end
