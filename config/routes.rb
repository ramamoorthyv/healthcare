Rails.application.routes.draw do
  #resources :patients
  resources :patients do
    collection do
      post :import
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
