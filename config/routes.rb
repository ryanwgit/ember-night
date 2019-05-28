Rails.application.routes.draw do
  
devise_for :users
resources :posts

#define Root URL
root 'pages#index'

#Define routes for pages
get '/home' => 'pages#home' #override default routes
get '/user/:id' => 'pages#profile'
get '/explore' => 'pages#explore'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
