require 'spec_helper'

describe 'the homepage', :type => :feature do
  it 'should load on a simple get request' do
    visit '/'
    page.should have_content('Today I Ate:')
  end
end
