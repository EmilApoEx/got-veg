class HomeController < ApplicationController
  def index # TODO: Refactor
    @grades = Grade.all
    @gurus = Guru.all
    @foods = Food.all
    @food_amounts = FoodAmount.includes(:food).all
    @food_amount = FoodAmount.new
  end
end
