Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  authenticated :user do
      root to: 'house#dashboard', as: :authenticated_root
  end

  resources :houses

  root to: 'pages#landing'
end
