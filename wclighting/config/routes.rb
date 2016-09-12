Rails.application.routes.draw do
	root 'construction#index'

	resources :construction, only: :index

  devise_for :admins

  get '/line-cards' => 'manufacturers#index'




end
