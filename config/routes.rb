GotVeg::Application.routes.draw do
  root :to => "home#index"
  put "/new_food_amount" => 'food_amount#update', :as => 'update_amount'
end
