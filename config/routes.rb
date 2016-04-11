Rails.application.routes.draw do
  resources :office_spaces
  root 'office_spaces#index'
end
