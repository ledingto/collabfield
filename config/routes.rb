Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#index'

  # route devise sign-in page to /login in addition to /users/sign_in
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
end
