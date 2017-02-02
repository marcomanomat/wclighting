Rails.application.routes.draw do
	root 'static_pages#index'

	resources :static_pages, only: :index
	resources :manufacturers do 
    resources :images
  end
	resources :employees
  resources :companies, except: [:show, :destroy], :path => "about"
  get '/contact_us' => 'companies#contact'
  
  resources :admins, only: [:new, :create]

  resources :product_types, :path => "admin_linecard"
  devise_for :admins

  # get '/manufacturers' => 'manufacturers#index'
  # get '/manufacturers/new' => 'manufacturers#new'
  # post '/manufacturers/new' => 'manufacturers#create'
  # get '/manufacturers/edit' => 'manufacturers#edit'  
  # post '/manufacturers/edit' => 'manufacturers#update'

  # get '/employees' => 'employees#index'
  # get '/employees/new' => 'employees#new'
  # post '/employees/new' => 'employees#create'
  # get '/employees/edit' => 'employees#edit'  
  # post '/employees/edit' => 'employees#update'

end
