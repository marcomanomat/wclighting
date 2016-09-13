Rails.application.routes.draw do
	root 'static_pages#index'

	resources :construction, only: :index
	resources :manufacturers, only: :index
  devise_for :admins

  get '/line-cards' => 'manufacturers#index'




end
