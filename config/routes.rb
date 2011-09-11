Atomic::Application.routes.draw do
  get "home/index"

  match "/dashboard" => "dashboard#show"

  namespace :dashboard do
    resource :profile, :questions, :links, :display, :messages
  end

  resources :profiles

  devise_for :users do
    get "/login" => "devise/sessions#new"
    get "/logout" => "devise/sessions#destroy"
    get "/register" => "devise/registrations#new"
  end

  root :to => 'home#index'
end
