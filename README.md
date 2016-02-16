Pulse Api Useful Information
----------------------------

## References:
http://emberigniter.com/modern-bridge-ember-and-rails-5-with-json-api/
http://jsonapi.org/
https://github.com/cerebris/jsonapi-resources

### current rails version
5.0.0.beta2

### current ruby verions
2.3.0

### JSONAPI-Resource
Currently referencing the 'rails5' branch in the gemfile, as this fixes some bugs that occurred with the release of rails5beta2. Watch for the merge of these bug fixes, and switch to an official release wen they have been merged https://github.com/cerebris/jsonapi-resources/pull/596

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

`rbenv install 2.3.0-dev`

##### setup rbenv to use ruby 2.3.0
in the pulse-api project directory run:

`rbenv local 2.3.0-dev`

##### install bundler

`gem install bundler`
if this asks for a sudo password or you get permissions issues rbenv might not be configured correctly

##### install depenancies with bundler

in the pulse-api project directory run:

`bundler install`

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

`rails server`
