Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'home#welcome', as: 'authenticated_root'
  end

  root 'home#index'

  # catchall
  match '*path', to: redirect('/'), via: :all
end
