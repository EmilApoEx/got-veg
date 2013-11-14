class FoodAmount < ActiveRecord::Base
  belongs_to :food
  validates_presence_of :quantity, :food_id
end
