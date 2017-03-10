Rails.application.routes.draw do
  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  root "cocktails#index"


  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
