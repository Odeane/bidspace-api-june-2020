Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/v1/auth'

  namespace :api do
    namespace :v1 do 
      resources :listings, only: [:index, :show, :create], constraints: {format: 'json'}
      resources :subscriptions, only: [:create], constraints: {format: 'json'}
      resources :biddings, only: [:create, :update], constraints: {format: 'json'}

      namespace :account do
        resources :listings, only: [:index, :show, :update], constraints: {format: 'json'}
        resources :biddings, only: [:index], constraints: {format: 'json'}
      end
    end
  end  
end