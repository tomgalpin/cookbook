Cookbook::Application.routes.draw do
  resources :users


  get "home/index"

  resources :ingredients


  resources :comments


  resources :steps


  resources :categories


  resources :recipes

  root :to => 'recipes#index'

end
  #resources :_________ is the same as the below:

  # get '/recipes' => 'recipes#index'
  # post '/recipes' => 'recipes#create'

  # get '/recipes/new' => 'recipes#new'
  # get '/recipes/:id/edit' => 'recipes#edit'
  # get '/recipes/:id' => 'recipes#show'

  # put '/recipes/:id' => 'recipes#update'

  # delete '/recipes/:id' => 'recipes#destroy'
