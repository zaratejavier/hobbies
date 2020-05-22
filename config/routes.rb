Rails.application.routes.draw do

  root to: "hobbies#index"
  devise_for :users

  resources :hobbies
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
