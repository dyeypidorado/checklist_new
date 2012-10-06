ChecklistNew::Application.routes.draw do
  devise_for :admins
  devise_for :inspectors

  mount RailsAdmin::Engine => '/cms', :as => 'rails_admin'

  root to: 'home#index'
end
