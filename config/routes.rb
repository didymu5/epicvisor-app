Rails.application.routes.draw do
  root to: "user#index"
  resources :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  if Rails.env.development?
    get "/styleguide" => "styleguide#styleguide"
  end
end
