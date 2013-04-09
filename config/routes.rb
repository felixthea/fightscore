Fightscore::Application.routes.draw do
  root :to => "fights#index"
  
  resources :fights
  resources :fighters
  resources :rounds
  
end
