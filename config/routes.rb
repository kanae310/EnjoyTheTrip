Rails.application.routes.draw do


  devise_for :users
  root to: "homes#top"
  resources :users,only:[:show,:index,:edit,:update]
  resources :tourists do
    resources :comments, only:[:create,:destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
