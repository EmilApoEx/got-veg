class FoodAmountController < ApplicationController
  def update
    @food_amount.update(food_amount_params) # TODO: setup flash for errors
    redirect_to root_path
  end
end
