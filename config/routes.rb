Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  concern :api_base do
    get 'random' => 'animals#random'
    get 'search' => 'animals#search'
    get 'young' => 'animals#young'
    get 'mature' => 'animals#mature'
    resources :animals
  end

  namespace :v1 do
    concerns :api_base
  end
end
