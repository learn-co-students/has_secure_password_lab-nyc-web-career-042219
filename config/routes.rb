Rails.application.routes.draw do
	get '/users/new', to: 'users#new'
  	post '/users/new', to: 'users#create'
	get '/login', to: 'sessions#new'  
	post '/login', to: 'sessions#create'
	get '/welcome', to: 'welcome#welcome'
	delete '/logout', to: 'users#destroy'

end
