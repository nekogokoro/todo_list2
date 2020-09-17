Rails.application.routes.draw do
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users

  root 'tasks#todo'
  resources :tasks do
    collection do
      get :todo, :done
    end
  end

  resources :testsessions, only: :create


end
