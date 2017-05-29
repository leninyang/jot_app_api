Rails.application.routes.draw do
  root 'welcome#index'
  resources :notes
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
