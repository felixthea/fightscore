Fightscore::Application.routes.draw do
  devise_for :users

  root :to => "fights#index"
  
  resources :fights do
    member do
      get 'score'
      get 'new_fight_rounds'
      get 'create_all_rounds'
      get 'destroy_all_scores'
    end
  end
  resources :fighters
  resources :rounds
  resources :scores
  
  #match '/fight/:id/score', :controller => 'scores', :action => 'create_scores'
  
end
