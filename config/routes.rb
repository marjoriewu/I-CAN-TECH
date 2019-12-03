Rails.application.routes.draw do
  devise_for :users
  root to: 'scenarios#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :scenarios do
    resources :steps, only: [:index, :show]
  end

  resources :records, only: [:index, :show]
end
