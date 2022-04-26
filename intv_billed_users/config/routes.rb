Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    # get "/billing", to: "user#edit"
    resources :users
end
