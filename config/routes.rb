Rails.application.routes.draw do
  root to: 'pages#home'
  # get '/admin', to: 'admin#home'
  devise_for :users

  namespace :admin do
    get '', to: 'admins#home', as: '/'
    resources :users, only:[:index, :edit, :update]
    resources :matches, only:[:index, :create]
  end

  namespace :student do
    get '', to: 'students#home', as: '/'
    resources :matches, only:[:index]
  end
end
