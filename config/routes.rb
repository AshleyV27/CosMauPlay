Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"


  resources :cosplays do
    resources :bookings, only: [:new, :create, :index]
  end
end
