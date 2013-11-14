class HomeController < ApplicationController
  def index 
    @gurus = Guru.all
    @food_amounts = FoodAmount.includes(:food).all
    @food_amount = FoodAmount.new
  end
end
