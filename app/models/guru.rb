class Guru < ActiveRecord::Base
  has_many :grades
  has_many :foods, :through => :grades
  validates_presence_of :name, :picture_url
  def score # TODO: refactor
    (sum_over('green') - sum_over('red')).round(2)
  end
  private
  def sum_over(color)
    self.grades.where('color = ?', color ).map{ |g| g.food.amount.quantity }.sum
  end
end
