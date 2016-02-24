Rails.application.routes.draw do

  jsonapi_resources :projects
  jsonapi_resources :stakeholders
  jsonapi_resources :stakeholder_snapshots
  jsonapi_resources :relationships

  get 'projects/:project_id/stakeholders' => 'stakeholders#for_project'

  get 'projects/:project_id/relationships' => 'relationships#for_project'

end
