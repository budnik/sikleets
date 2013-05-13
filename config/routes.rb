Sikleets::Application.routes.draw do
  resource :timeline, only: :show
  root to: 'home#index'
end
