Made using this tutorial: http://emberigniter.com/modern-bridge-ember-and-rails-5-with-json-api/

with this command: "bundle exec railties/exe/rails new ../pulse-api-2 --api --database=postgresql --edge -B"

Built using rails 5 beta 2. The gemfile is referencing the rails repo which is stored locally on my machine

I used these commands to generate scaffolds:
  bin/rails generate scaffold project name:string client:text timeframe:integer timeFormat:string totalStakeholders:integer projectOverview:text

  bin/rails generate scaffold stakeholder name:string image:text organisation:string role:string tags:array notes:array

  bin/rails generate scaffold stakeholder_snapshot references:project references:stakeholder week:integer power:float support:float vital:float
