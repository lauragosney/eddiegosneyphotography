Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "photos#index"

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

end
