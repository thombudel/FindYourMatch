Rails.application.routes.draw do
  root to: 'pages#home'
  # get '/admin', to: 'admin#home'
  devise_for :users

  namespace :admin do
    get '', to: 'admins#home', as: '/'
    resources :users, only:[:index, :edit, :update]
  end
end
