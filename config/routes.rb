Rails.application.routes.draw do

  namespace :admins_backoffice do
    get 'welcome/index' ##Dashbooard
    resources :admins
    resources :employees
  end
  
  devise_for :admins do
    get '/admins/sign_out' => 'devise/sessions#destroy'
  end

  get 'admin', to: 'admins_backoffice/welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
