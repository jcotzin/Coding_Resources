Rails.application.routes.draw do

  devise_for :users

  resources :resources do
    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end

  root 'resources#index'
end
