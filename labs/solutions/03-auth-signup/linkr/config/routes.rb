Linkr::Application.routes.draw do
  get "users/new"

  get "welcome/index"

  match '/signup' => 'users#new'

  root :to => 'welcome#index'
end
