Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'comics#index'
  resources :comics do
    collection do
      get :happy
      get :angry
      get :sad
      get :excite
    end
  end
  resources :stories ,only: %w(index show)
end
