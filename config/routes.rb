Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :runewords, only: [:index, :show] do
        get :runes
        get :properties
        get :item_types
      end
      resources :runes, only: [:index, :show] do
        get :runewords
      end
      resources :properties, only: [:index, :show] do
        get :runes
        get :runewords
      end
      resources :item_types, only: [:index, :show] do
        get :runewords
      end
    end
  end
end
