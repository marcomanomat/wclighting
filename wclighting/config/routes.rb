Rails.application.routes.draw do
	root 'construction#index'

	resources :static_pages, only: :index
	resources :manufacturers
  devise_for :admins

  get '/manufacturers' => 'manufacturers#index'
  get '/manufacturers/new' => 'manufacturers#new'
  post '/manufacturers/new' => 'manufacturers#create'
  get '/manufacturers/edit' => 'manufacturers#edit'  
  post '/manufacturers/edit' => 'manufacturers#update'



end
