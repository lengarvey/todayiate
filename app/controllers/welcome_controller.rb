class WelcomeController < ApplicationController
  def index
    @meals = current_user.meals
  end
end
