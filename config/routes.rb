ListApp::Application.routes.draw do
  resources :lists
  root :to => lists_path
end
