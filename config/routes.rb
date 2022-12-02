Rails.application.routes.draw do
  get 'profiles/index', to: 'profiles#index'
  get 'profiles/show'
  get 'profiles/create'
  get 'profiles/update'
  get 'profiles/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
