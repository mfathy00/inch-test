Rails.application.routes.draw do
  root 'import#index'
  resources :import do
    collection { post :csv_upload }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
