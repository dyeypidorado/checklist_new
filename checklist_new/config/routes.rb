ChecklistNew::Application.routes.draw do
  mount RailsAdmin::Engine => '/cms', :as => 'rails_admin'

  devise_for :admins
  root to: 'home#index'
end
