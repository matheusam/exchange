Rails.application.routes.draw do
  get 'transactions/new'
  get 'transactions/create'
  get 'transactions/show'
  get 'transactions/edit'
  get 'transactions/update'
  get 'transactions/destroy'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => "home#index"
  root :to => "home#index"
  resources :transactions
  resources :user

end
