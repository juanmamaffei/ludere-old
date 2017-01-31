Rails.application.routes.draw do

  

  devise_for :users
  resources :misions do
  	resources :objetivos
  end

   	resources :objetivos

  get 'welcome/index'
  
  get 'home/index'
  root "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
