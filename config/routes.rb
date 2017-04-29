Rails.application.routes.draw do
  
  get 'home/front'

  devise_for :users
	resources :posts do
		resources :comments
	end
	resources :groups

	root "home#front"
	
	get '/about', to: 'pages#about'
	get '/forum', to: 'posts#index'
	get '/newgroup', to:'groups#new'
	get '/newuser', to: 'groups#newuser'
	get '/mce', to: 'home#mce'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
