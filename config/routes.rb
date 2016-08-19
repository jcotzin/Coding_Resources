Rails.application.routes.draw do
  devise_for :users
  resources :resources do
    resources :reviews, except: [:show, :index]
  end

  root 'resources#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
