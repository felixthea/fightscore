Fightscore::Application.routes.draw do
  root :to => "fights#index"
  
  resources :fights do
    resources :rounds
  end
end
