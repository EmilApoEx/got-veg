class Guru < ActiveRecord::Base
  has_many :grades
  has_many :foods, :through => :grades
  validates_presence_of :name, :picture_url
  def score # TODO: refactor
    (self.grades.where('color = ?', "green").map{ |g| g.food.amount.quantity }.inject(&:+)-
     self.grades.where('color = ?', "red"  ).map{ |g| g.food.amount.quantity }.inject(&:+)).round(2)
  end
end
