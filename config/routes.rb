Rails.application.routes.draw do
  get 'pages_resto/home'

  get 'pages_resto/reservation'

  get 'pages_resto/signup'

  get 'pages_resto/contact'

  root 'pages_resto#home'
end
