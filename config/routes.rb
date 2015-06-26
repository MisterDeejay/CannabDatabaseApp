Rails.application.routes.draw do
  root to: 'static_pages#root'
	get '/thank-you', to: 'static_pages#thank-you'	
	get '/confirmation', to: 'static_pages#confirmation'
	post '/signup', to: 'users#email_signup'
end
