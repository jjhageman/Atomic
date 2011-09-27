Atomic::Application.routes.draw do
  get "home/index"

  devise_for :users do
    get "/login" => "devise/sessions#new"
    get "/logout" => "devise/sessions#destroy"
    get "/register" => "devise/registrations#new"
  end

  match "/dashboard" => "dashboard#show"

  namespace :dashboard do
    resource :profile, :questions, :display_settings, :messages, :photos
    resource :links_list, :path => 'links'
  end

  match ':profile_id' => 'profiles#show', as: :profile
  root :to => 'home#index'
end
