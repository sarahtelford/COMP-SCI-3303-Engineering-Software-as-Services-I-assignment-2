Rails.application.routes.draw do
  root 'movies#index'

  resources :movies
  get 'find_by_title/:title' => 'movies#search', as: :find_by_title
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


