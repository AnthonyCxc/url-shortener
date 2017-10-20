Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'urls#index'
  resources :urls 
  # resource/s usually goes to the get function as default.
  # re

    get '/urls/:id/short' => 'urls#short'
end

# specific route

# get '/something' to: "welcome#profile" as: "something2"
		