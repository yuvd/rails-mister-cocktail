Rails.application.routes.draw do
  #delete '/cocktails/:cocktail_id/doses/delete', to: 'doses#delete', as: 'delete_cocktail_dose'
  root to: 'cocktails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, except: %i[destroy update edit] do
    resources :doses, only: %i[new create destroy]
  end
end
