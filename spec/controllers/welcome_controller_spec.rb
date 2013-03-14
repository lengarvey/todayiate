require 'spec_helper'

describe WelcomeController do

  describe "GET 'index'" do
    it "returns http success" do
      WelcomeController.stub(:user_signed_in?) { false }

      get 'index'
      response.should be_success
    end
  end

end
