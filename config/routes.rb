Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :trades, only: [:show, :new, :create]

  root 'trades#new'
end
