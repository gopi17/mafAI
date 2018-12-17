Rails.application.routes.draw do
  get 'landing/index'

  resources :games

  root 'landing#index'

  mount ActionCable.server => '/cable'
end
