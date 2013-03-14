require 'spec_helper'

describe 'the homepage', :type => :feature do
  before :each do
    visit '/'
  end

  it 'should load on a simple get request' do
    page.should have_content('Today I ate')
  end

  it 'should let allow a user to enter a food log' do
    fill_in 'Log', :with => 'A cheese burger, fries and a 200ml coke'
    click_button 'Submit'
    page.status_code.should == 200
  end

end
