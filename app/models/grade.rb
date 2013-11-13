class Grade < ActiveRecord::Base
  belongs_to :food
  belongs_to :guru
  validates_presence_of :color, :food_id, :guru_id
end
