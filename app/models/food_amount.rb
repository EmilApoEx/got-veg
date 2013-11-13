class FoodAmount 
  belongs_to :food
  validates_presence_of :quantity
end
