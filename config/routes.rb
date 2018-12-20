Rails.application.routes.draw do
  default_url_options :host => "google.com"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "dashboards#index"

  resources :dashboards
end
