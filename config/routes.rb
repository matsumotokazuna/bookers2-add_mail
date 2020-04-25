Rails.application.routes.draw do
  root :to => 'home#top'
  get '/home/about' => 'home#about'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
end