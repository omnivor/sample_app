Rails.application.routes.draw do
  get 'password_reset/new'

  get 'password_reset/edit'

  get 'sessions/new'

  get 'user/new'

  get 'users/new'

  	root 'static_pages#home'
	get '/contact', to: 'static_pages#contact'
	get '/about', to: 'static_pages#about'
	get '/help', to: 'static_pages#help'
	get '/signup', to: 'users#new'
	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'
	resources :users
	resources :account_activations, only: [:edit]
	resources :password_resets, only: [:new, :create, :edit, :update]
end
