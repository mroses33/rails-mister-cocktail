Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: %i[index new create show destroy] do
    resources :doses, only: %i[new create]
    resources :reviews, only: %i[new create]
  end
  resources :doses, only: [:destroy]
end


