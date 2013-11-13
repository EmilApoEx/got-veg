class Guru < ActiveRecord::Base
  has_many :grades
  has_many :foods, :through => :grades
  validates_presence_of :name, :picture_url
end
