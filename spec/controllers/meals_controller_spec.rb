require 'spec_helper'

describe MealsController do
  before :each do
    controller.stub(:authenticate_user!) { true }
  end

  describe '#new' do
    it 'should authenticate users' do
      controller.should_receive(:authenticate_user!) { true }
      get 'new'
    end

    it 'returns success' do
      get 'new'
      response.should be_success
    end
  end

  describe '#create' do
    before :each do
      user_double = double('User', :meals => Meal)
      controller.stub(:current_user) { user_double }
    end

    context 'with a valid meal params' do
      let(:valid_meal) { { :body => 'Double cheeseburger and fries' } }

      it 'should create a new meal' do
        Meal.should_receive(:create)
        post :create, :meal => valid_meal
      end

      it 'should redirect' do
        post :create, :meal => valid_meal
        response.should be_redirect
      end

    end

    context 'with invalid meal params' do
      let(:invalid_meal) { {:body => ''} }

      it 'should render the meal form with errors' do
        post :create, :meal => invalid_meal
        response.should render_template('new')
      end
    end
  end
end
