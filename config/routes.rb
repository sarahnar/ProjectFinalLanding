Rails.application.routes.draw do
  devise_scope :user do
    get "/signin" => "devise/sessions#new" # custom path to login/sign_in
    get "/signup" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
  
  devise_for :users
  get '/reservation', to: 'pages_resto#reservation'
  
  get '/contact',     to: 'pages_resto#contact'
  get '/about',       to: 'pages_resto#about'
  root 'pages_resto#home'
end
