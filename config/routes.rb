Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  resources :bookings
  post '/bookings', to: 'bookings#create', as: :referral_conversion
  resources :referrals

end
