Rails.application.routes.draw do
  resources :searches, only: [:search]
  root 'searches#search'

end
