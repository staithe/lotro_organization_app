Rails.application.routes.draw do
  resources :static_pages
  resources :kinds
  resources :deeds
  resources :locations
  resources :drops
  resources :npcs
  resources :testpages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :controller
end
