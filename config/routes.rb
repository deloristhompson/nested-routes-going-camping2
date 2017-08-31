Rails.application.routes.draw do
  resources :supplies, only: [:index, :show]

  resources :campsites, only: [:index, :show] do
    resources :campers, only: [:index, :show]
  end

  resources :campers, only: [:index] do
    resources :supplies, only: [:index, :show]
  end

end
