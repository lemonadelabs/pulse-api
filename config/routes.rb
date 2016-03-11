Rails.application.routes.draw do

  jsonapi_resources :projects
  jsonapi_resources :stakeholders
  jsonapi_resources :stakeholder_snapshots

  namespace :api do

    jsonapi_resources :projects
    jsonapi_resources :stakeholders
    jsonapi_resources :stakeholder_snapshots


    resources :votes
    get 'projects/:project_id/connections' => 'connections#for_project'
    get 'projects/:project_id/stakeholders/:stakeholder_id/connections' => 'connections#for_stakeholder'
    get 'projects/:project_id/stakeholders/:stakeholder_id/votes' => 'votes#for_sh_point'
    get 'projects/:project_id/stakeholders' => 'stakeholders#for_project'




  end

end
