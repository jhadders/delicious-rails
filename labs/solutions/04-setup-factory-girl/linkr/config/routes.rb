Linkr::Application.routes.draw do
  match '/signup' => 'users#new'

  resources :users, :only => [:new, :create]

  root :to => 'welcome#index'
end
