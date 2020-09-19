Rails.application.routes.draw do
  resources :users
  resources :tweets, only:[:show, :new, :create, :edit, :update, :delete]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
