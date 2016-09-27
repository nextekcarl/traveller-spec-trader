Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :trades, only: [:show, :new, :create]
  resources :subsectors, only: [:index, :show, :new, :create]
  resources :planets, only: [:index, :show]

  root 'trades#new'
end
