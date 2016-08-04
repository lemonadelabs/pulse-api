Pulse Api Useful Information
----------------------------

## References:
[Rails 5, ember 2 and jsonapi-resources tutorial](http://emberigniter.com/modern-bridge-ember-and-rails-5-with-json-api/)  
[JSONAPI specification](http://jsonapi.org/)  
[jsonapi-resources](https://github.com/cerebris/jsonapi-resources)  

### current rails version
5.0.0

### current ruby verions
2.3.0

### JSONAPI-Resources
Currently the gemfile is pointing to a specific commit on the 'rails5' branch in the jsonapi-resources repo. This is because with the current implementation there are breaking changes at some point soon after this commit.

## Mac Install Instructions:
These instructions are written for MacOS 10.11.3

##### install rbenv
`brew install rbenv`

##### load rbenv automatically
Add the following to your ~/.bashrc or ~/.zshrc file

```
# Load rbenv automatically by appending
eval "$(rbenv init -)"
```

##### install ruby 2.3.0

`rbenv install 2.3.0`

if it says that it can't find version 2.3.0 you might need to update the brew packages and ruby-build

```
brew update && brew upgrade ruby-build
```

##### setup rbenv to use ruby 2.3.0
in the pulse-api project directory run:

`rbenv local 2.3.0`

##### install bundler

`gem install bundler`
if this asks for a sudo password or you get permissions issues rbenv might not be configured correctly

##### install depenancies with bundler

in the pulse-api project directory run:

`bundle`

##### install postgres
`brew install postgres`

##### setup postgres
this will make postgres start automatically on login
```
mkdir -p $HOME/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```

#### setup database

```
rails db:create
rails db:migrate
rails db:seed
```

#### run the server

`bundle exec puma`


# Information about the deployed instance

ssh pulse@pp-test-deploy.

there is a postgres user. Username pulse, pw awe5ome (for database.yml)

login `ssh pulse@pp-test-deploy.`

to start the server, on the remote server, run:
uwsgi -i pulse.ini

to find uwsgi processes, on the remote server, run:
ps -x

rails env is set in pulse.ini on the remote

path needs to be configured in deploy.rb : `set :default_env, { path: "/home/pulse/local/bin:/usr/local/bin:/usr/bin:/bin" } # http://stackoverflow.com/a/19735263/5522700`
I added `require 'sprockets/railtie'` to application.rb

to deploy, run:
  cap production deploy

do seed the develeopment database, on the server run:
  bundle exec rake db:seed RAILS_ENV=production

to enter remote rails console, in local terminal, run:
  cap production rails:console


### slack messages from Achim

I've fought a little battle with uwsgi configurations to get the needs of this app sorted. The result is in /home/pulse/pulse.ini ... featuring a minimal rails application app.ru which serves https://pulse.lemonadelabs.io/api/  - with the response 'Hello'.

[10:13]
The uwsgi serving pulse on port 3030 is not the system wide uwsgi from debian, so it is started with ˋnohup /home/pulse/local/bin/uwsgi -i /home/pulse/pulse.ini &ˋ.

[10:16]
From there it should be easy to deploy your stuff, @will. (I will have to rename this VM, as it has now several mission-critical functions, anyway the production part of cardhu will end up dockerized to keep it managable with more complexity ... (near) future).


