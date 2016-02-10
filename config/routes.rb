Rails.application.routes.draw do

  jsonapi_resources :projects
  jsonapi_resources :stakeholders
  jsonapi_resources :stakeholder_snapshots


  # resources :stakeholder_snapshots, :path => '/stakeholder-snapshots'
  # resources :stakeholders
  # resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
