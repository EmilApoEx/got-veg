class FoodController < ApplicationController
  def new
    @food = Food.new
    @gurus = Guru.all
  end

  def create
    debugger
    
    food = Food.new(:name => params[:food][:name],
                    :unit => params[:food][:unit])
    food.save

    params[:food][:gurus_attributes].each do |index, guru|
      grade = Grade.new(food: food, 
                        guru: Guru.find(guru[:id].to_i), 
                        color: guru[:color])
      grade.save
    end
    
    redirect_to root_path
  end

  def update # TODO: Implement an edit feature

  end

  # TODO: Should there be a destroy feature as well?
end
