Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # overwrite the default Devise RegistrationsController
  devise_for :users, :controllers => {:registrations => "registrations"}

  root to: 'pages#index'

  # route devise sign-in page to /login in addition to /users/sign_in
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
end
