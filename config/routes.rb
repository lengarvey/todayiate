Todayiate::Application.routes.draw do
  resources :meals


  devise_for :users

  root :to => 'welcome#index'
end
