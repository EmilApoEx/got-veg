class FoodAmountController < ApplicationController
  def update
    food = Food.find(params[:food_amount][:food_id])
    food.amount.update_attribute(:quantity, params[:food_amount][:quantity].to_f) # TODO: setup flash for errors
    redirect_to root_path
  end
end
