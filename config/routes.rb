Fightscore::Application.routes.draw do
  root :to => "fights#index"
  
  resources :fights do
    resources :fighters do
      resources :rounds
    end
  end
end
