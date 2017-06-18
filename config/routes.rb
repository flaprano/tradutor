Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'traducoes' => 'translations#index'
  root to: 'translations#index'
  resources :translations
end
