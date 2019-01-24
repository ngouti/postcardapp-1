Rails.application.routes.draw do
  get 'states/name'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :api do
      namespace :v1 do
          # root 'postcards#index'
          resources :postcards
          resources :addresses
          resources :states
      end
    end
end
