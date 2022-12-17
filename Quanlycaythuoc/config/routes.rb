Rails.application.routes.draw do
  get "login" => 'session#new'
  post "login" => 'session#create'
  get "logout" => 'session#destroy'
  get "welcome" => 'home#top'
  resources :ql_tvs
  resources :session

    get 'home/top'
    get 'home/about'
    get 'ql_tvs/index'
    get 'home/personal'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "ql_tvs#index"
  # root "articles#index"
end
