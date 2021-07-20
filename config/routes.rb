Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
  get '/books', to:'books#index'
  get '/books/:id', to: 'books#show'
  get '/books/new', to:'books#new'
  post '/books', to:'books#create'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    end
end
