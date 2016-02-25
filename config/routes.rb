Rails.application.routes.draw do

  resources :votes
  get 'projects/:project_id/connections' => 'connections#for_project'

  jsonapi_resources :projects
  jsonapi_resources :stakeholders
  jsonapi_resources :stakeholder_snapshots
  jsonapi_resources :votes

  get 'projects/:project_id/stakeholders' => 'stakeholders#for_project'

  # get 'projects/:project_id/connections' => 'relationships#for_project'

end
