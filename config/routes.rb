Rails.application.routes.draw do
  devise_for :users
  root to: 'scenarios#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :scenarios do
    resources :records, only: [:new, :create]
    resources :steps, only: [:index, :show]
  end

  resources :steps do
    resources :records, only: [:update]
  end
  resources :records, only: [:index, :show]

  get '/records/:id/badges', to: 'records#badges', as: 'badges'
end
