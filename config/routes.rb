Rails.application.routes.draw do

  get 'profiles/index', to: 'profiles#index'
  get 'profiles/new', to: 'profiles#new'
  get 'profiles/:id/show', to: 'profiles#show'
  post 'profiles/create', to: 'profiles#create'
  get 'profiles/:id/edit', to: 'profiles#edit'
  patch 'profiles/update', to: 'profiles#update'
  delete 'profiles/:id/destroy', to: 'profiles#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
