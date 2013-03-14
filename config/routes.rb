Todayiate::Application.routes.draw do
  resources :entries


  devise_for :users

  root :to => 'welcome#index'
end
