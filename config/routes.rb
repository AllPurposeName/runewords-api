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
    end
  end
end
