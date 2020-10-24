Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :wells, only: [:index]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :wells, only: [ :index, :show ]
    end
  end
end
