Rails.application.routes.draw do

  get 'evaluation_employee/new'
  resources :evaluation_employee
  namespace :admins_backoffice do
    get 'welcome/index' ##Dashbooard
    resources :admins
    resources :employees

  end
  
  devise_for :admins do
    get '/admins/sign_out' => 'devise/sessions#destroy'
  end

  get 'employee/:id', to: 'evaluation_employee#show_modal', as: :show_modal
  
  get 'admin', to: 'admins_backoffice/welcome#index'
  root to: 'evaluation_employee#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
