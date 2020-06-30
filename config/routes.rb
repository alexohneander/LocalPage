Rails.application.routes.draw do

  root 'site#index'
  get 'site/index'
  get 'backend/dashboard'
  get 'backend/create_new_website'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  match "*path" => "site#page", via: [:get, :post]  
end
