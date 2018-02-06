Rails.application.routes.draw do
  resources :authors
  resources :posts do
    resources :comments
    get 'search', on: :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end