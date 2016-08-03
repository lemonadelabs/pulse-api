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

`rails s`
