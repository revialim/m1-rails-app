Rails.application.routes.draw do
  resources :toests
# get 'sessions/new'
# get 'sessions/create'
# get 'sessions/destroy'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'l/logout', to: 'sessions#destroy'

  resources :users
  resources :likes
  resources :picture_entries do
  	put 'togglefilter'
  end

  get 'welcome/index'

  root 'picture_entries#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
