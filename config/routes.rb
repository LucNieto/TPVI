Rails.application.routes.draw do
  resources :surveys
  devise_for :users
  root to: "welcome#index"
  resources :teachers
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
