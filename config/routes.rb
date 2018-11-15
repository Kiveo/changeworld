Rails.application.routes.draw do
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # set 'homepage' to controller#action
  root 'ideas#index'
  
end
