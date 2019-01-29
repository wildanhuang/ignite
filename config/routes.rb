Rails.application.routes.draw do
  default_url_options :host => "http://128.199.144.160"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "dashboards#index"

  resources :dashboards
  resources :spirit_charges do
    get 'page/:page', action: :index, on: :collection
    collection do
        get :read
      end
  end
  resources :readings
  resources :users do
    collection do
      get :confirm
    end
  end

  resources :surveys
end
