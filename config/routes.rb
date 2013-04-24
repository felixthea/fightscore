Fightscore::Application.routes.draw do
  devise_for :users

  root :to => "fights#index"
  
  resources :fights do
    member do
      get 'score'
      get 'create_rounds'
    end
  end
  resources :fighters
  resources :rounds
  resources :scores
  
  #match '/fight/:id/score', :controller => 'scores', :action => 'create_scores'
  
end
