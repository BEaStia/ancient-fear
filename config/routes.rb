Rails.application.routes.draw do
  resources :profiles, only: :show
  resources :lobbies
  devise_for :users,
             controllers: { sessions: 'users/sessions' },
             defaults: { format: :json }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
