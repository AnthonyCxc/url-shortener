Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'urls#index'
  resources :urls 
  # resources usually goes gor the get function as default.
end

# specific route

# get '/something' to: "welcome#profile" as: "something2"
		