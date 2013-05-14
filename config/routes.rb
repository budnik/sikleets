Sikleets::Application.routes.draw do
  resource :timeline, only: :show
  match '*path' => 'home#index'
end
