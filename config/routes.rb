Rails.application.routes.draw do
  require 'sidekiq/web'
  scope :monitoring do
    mount Sidekiq::Web, at: '/sidekiq'
  end
  resources :high_scores
  get 'endangered/index'
  get 'endangered/data', to: 'endangered#data'
  post 'endangered/upload', to: 'endangered#upload'
  post 'endangered/destroy', to: 'endangered#destroy'
  get 'home/index'
  resources :sharks do
	  resources :posts
  end
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
