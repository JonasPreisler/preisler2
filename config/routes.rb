Rails.application.routes.draw do
  resources :projects
  resources :create_projects
  root 'pages#index'
  get '/about', to: 'pages#about'
  resources :projects
  resources :categories
end
