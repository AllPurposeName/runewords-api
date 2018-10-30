Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :runewords, only: %i[index show] do
        get :runes
        get :properties
        get :item_types
      end
      resources :runes, only: %i[index show] do
        get :runewords
      end
      resources :properties, only: %i[index show] do
        get :runes
        get :runewords
      end
      resources :item_types, only: %i[index show] do
        get :runewords
      end
    end
  end
end
