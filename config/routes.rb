Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
  resources :books, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  # get '/books', to:'books#index'
  # get '/books/new', to:'books#new'
  # post '/books', to:'books#create'
  # get '/books/:id', to: 'books#show'
  # get 'books/:id/bookings/new', to: 'bookings#new'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    end
end
