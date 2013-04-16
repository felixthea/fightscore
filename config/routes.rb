Fightscore::Application.routes.draw do
  devise_for :users

  root :to => "fights#index"
  
  resources :fights
  resources :fighters
  resources :rounds
  
end
