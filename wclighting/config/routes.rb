Rails.application.routes.draw do
	root 'construction#index'

	resources :static_pages, only: :index
	resources :manufacturers, only: :index
  devise_for :admins

  get '/line-cards' => 'manufacturers#index'




end
