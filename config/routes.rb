Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new', as: 'new_article'
  post '/articles' => 'articles#create', as: 'create_article'

  get '/articles/edit/:id' => 'articles#edit', as: 'edit_article'
  patch '/articles/:id' => 'articles#update', as: 'update_article'
  delete '/articles/:id' => 'articles#delete', as: 'delete_article'

  get '/users' => 'user#index'
  get '/users/new' => 'user#new', as: 'new_user'
  post '/users' => 'user#create', as: 'create_user'
  get '/users/edit/:id' => 'user#edit', as: 'edit_user'
  patch '/users/:id' => 'user#update', as: 'update_user'
  delete '/users/:id' => 'user#delete', as: 'delete_user'
end
