GotVeg::Application.routes.draw do
  root :to => "home#index"

  put  "/update_food_amount"       => 'food_amount#update', :as => 'update_amount'

  get  "/add_new_foods_and_grades" => 'food#new',           :as => 'new_foods'
  post "/create_food_with_grades"  => 'food#create',        :as => 'create_food'
  put  "/edit_food_and_grades"     => 'food#update',        :as => 'update_food'
end
