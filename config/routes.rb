Fightscore::Application.routes.draw do
  resources :fight do
    resources :round
  end
end
