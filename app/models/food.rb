class Food < ActiveRecord::Base
  has_one :amount, :class_name => 'FoodAmount'
  has_many :grades
  has_many :gurus, :through => :grades
  validates_presence_of :name, :unit
  accepts_nested_attributes_for :gurus
  #attr_accessor :name, :unit
end
