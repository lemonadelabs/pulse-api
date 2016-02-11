Made using this tutorial: http://emberigniter.com/modern-bridge-ember-and-rails-5-with-json-api/

with this command: "bundle exec railties/exe/rails new ../pulse-api-2 --api --database=postgresql --edge -B"

current rails version
  5.0.0.beta2

current ruby verions
  2.3.0

JsonAPI-Resource
  using 'rails5' branch as this fixes some problems that occurred with rails5beta2. Use master branch after this or equivilent merge https://github.com/cerebris/jsonapi-resources/pull/596



I used these commands to generate scaffolds:
  bin/rails generate scaffold project name:string client:text timeframe:integer timeFormat:string totalStakeholders:integer projectOverview:text

  bin/rails generate scaffold stakeholder name:string image:text organisation:string role:string tags:array notes:array

  bin/rails generate scaffold stakeholder_snapshot references:project references:stakeholder week:integer power:float support:float vital:float


routes needed:

project
  get one project => '/projects/:project_id' works!
  get all projects => '/projects' works!

stakeholders
  get one stakeholder => 'stakeholder/:id' works!
  get all stakeholders for project => '/projects/:project_id/stakeholders' works!

stakeholder_snapshots
  get all stakeholder_snapshots for project => 'projects/:project_id/stakeholder_snapshots'
    optional params[:week]
