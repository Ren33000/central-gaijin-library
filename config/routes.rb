Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
  get '/books/search', to: 'books#search', as: 'search'
  get '/books/category', to: 'books#category', as: 'category'
  resources :books, only: [:index, :show, :new, :create,] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:update, :destroy]
  get '/dashboards', to: 'dashboards#profile'
  # get '/books', to:'books#index'
  # get '/books/new', to:'books#new'
  # post '/books', to:'books#create'
  # get '/books/:id', to: 'books#show'
  # get 'books/:id/bookings/new', to: 'bookings#new'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    end
end
