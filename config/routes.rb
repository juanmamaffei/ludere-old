Rails.application.routes.draw do

  resources :misions do
  	resources :objetivos
  end

   	resources :objetivos

  get 'welcome/index'
  root "welcome#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
