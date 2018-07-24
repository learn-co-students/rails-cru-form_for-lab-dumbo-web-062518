Rails.application.routes.draw do
  resources :artists, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :genres, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :songs, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
