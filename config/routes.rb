ChecklistNew::Application.routes.draw do
  devise_for :admins
  devise_for :inspectors

  mount RailsAdmin::Engine => '/cms', :as => 'rails_admin'

  resources :lists do
    member do
      get "report"
    end
  end

  resources :lists do
    resources :reports, only: :index
  end

  resources :reports, only: :create

  root to: 'home#index'
end
