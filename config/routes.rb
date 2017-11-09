Rails.application.routes.draw do
  root 'home#index'

resources :home

post '/', to: 'home#send_tweet'

end
