Sikleets::Application.routes.draw do
  resource :timeline, only: :show
  root to: 'home#index'
  match '*path' => 'home#index'
end
