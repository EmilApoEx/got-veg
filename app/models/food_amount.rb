class FoodAmount < ActiveRecord::Base
  belongs_to :food, :touch => true
  validates_presence_of :quantity, :food_id
end
