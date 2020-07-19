Rails.application.routes.draw do
  devise_for :users
  root "pages#index"

  namespace :api do
    namespace :v1 do
      resources :menus
      resources :dishes, only: %i[create destroy edit]
    end
  end

  get "*path", to: "pages#index", via: :all
end
