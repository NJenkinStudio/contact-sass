Rails.application.routes.draw do
  
  devise_for :users
  root 'contacts#index'
  get 'new_contact', to: 'contacts#new_contact'
end
