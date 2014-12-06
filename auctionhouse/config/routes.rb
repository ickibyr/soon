Rails.application.routes.draw do
  
  resources :auctions
  
  root 'welcome#index'
end
