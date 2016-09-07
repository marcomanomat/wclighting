Rails.application.routes.draw do
	root 'construction#index'
  
  devise_for :admins

  get '/line-cards' => 'manufacturers#index'




end