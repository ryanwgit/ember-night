Rails.application.routes.draw do
  
#define Root URL
root 'pages#index'

#Define routes for pages
get '/home' => 'pages#home' #override default routes
get '/profile' => 'pages#profile'
get '/explore' => 'pages#explore'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
