Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :runewords, only: [:index, :show] do
        get :runes
      end
    end
  end
end
