Rails.application.routes.draw do
  
  devise_for :users
  get '/reservation', to: 'pages_resto#reservation'
  get '/signup',      to: 'pages_resto#signup'
  get '/contact',     to: 'pages_resto#contact'
  get '/about',       to: 'pages_resto#about'
  root 'pages_resto#home'
end
