Rails.application.routes.draw do
  get 'user/new'

  get 'users/new'

	get '/contact', to: 'static_pages#contact'
	get '/about', to: 'static_pages#about'
	get '/help', to: 'static_pages#help'
	root 'static_pages#home'
	get '/signup', to: 'users#new'
	post '/signup', to: 'users#create'
	resources :users
end
