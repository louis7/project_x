Rails.application.routes.draw do
  resources :searches, only: [:index]

  get 'blockcoinx.herokuapp.com', to: 'searches#search'



end
