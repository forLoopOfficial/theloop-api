Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'



  namespace :api, defaults: {format: :json} do
    scope module: :v1 do
      resources :posts, only: [:create, :index, :destroy, :show]
      resources :likes, only: [:create, :destroy]
    end
  end
end
