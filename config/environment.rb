ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

# sets up a connection to a sqlite3 db named "database.db"
configure :development do
  set :database, 'sqlite3:db/database.db'
end

require './app'
