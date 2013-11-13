class Food < ActiveRecord::Base
  has_many :grades
  has_many :gurus, :through => :grades
  validates_presence_of :name, :unit
end
