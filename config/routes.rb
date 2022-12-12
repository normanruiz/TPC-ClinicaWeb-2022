Rails.application.routes.draw do

  get 'profiles/index', to: 'profiles#index'
  get 'profiles/new', to: 'profiles#new'
  get 'profiles/:id/show', to: 'profiles#show'
  post 'profiles/create', to: 'profiles#create'
  get 'profiles/:id/edit', to: 'profiles#edit'
  patch 'profiles/update', to: 'profiles#update'
  delete 'profiles/:id/destroy', to: 'profiles#destroy'

  get 'users/index', to: 'users#index'
  get 'users/new', to: 'users#new'
  get 'users/:id/show', to: 'users#show'
  post 'users/create', to: 'users#create'
  get 'users/:id/edit', to: 'users#edit'
  patch 'users/update', to: 'users#update'
  delete 'users/:id/destroy', to: 'users#destroy'

end
