Rails.application.routes.draw do

  jsonapi_resources :projects
  jsonapi_resources :stakeholders
  jsonapi_resources :stakeholder_snapshots
  jsonapi_resources :connections

  get 'projects/:project_id/stakeholders' => 'stakeholders#for_project'

  # get 'projects/:project_id/connections' => 'relationships#for_project'

end
