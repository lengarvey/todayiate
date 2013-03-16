class MealsController < ApplicationController
  before_filter :authenticate_user!

  respond_to :html

  def new
    @meal = Meal.new
  end

  def create
    @meal = current_user.meals.create(params[:meal])
    respond_with @meal, :location => root_path
  end
end
