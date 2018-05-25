Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to: "photos#index"

  resource :newsletter

  resources :photos

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

end
