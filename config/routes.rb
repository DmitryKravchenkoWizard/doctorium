Rails.application.routes.draw do

  scope :api, defaults: { format: :json } do
    devise_for :users
    resources :achievements, only: [:index, :show, :create, :update, :destroy]
    resources :additional_infos, only: [:index, :show, :create, :update, :destroy]
    resources :patients, only: [:index, :show, :create, :update, :destroy]
    resources :clinics, only: [:index, :show, :create, :update, :destroy]
    resources :doctors, only: [:index, :show, :create, :update, :destroy]
    resources :doctor_reviews, only: [:index, :show, :create, :update, :destroy]
    resources :professions, only: [:index, :show, :create, :update, :destroy]
    resources :users, only: [:index, :show]
  end

  #root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end