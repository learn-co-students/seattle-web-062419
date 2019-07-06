require 'bundler/setup' 
Bundler.require

# bundler/setup loads all the gems from the Gemfile
# Bundler.require makes sure that all dependencies are also loaded

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "db/development.sqlite"
)

# set up the database connection and/or create the database file

ActiveRecord::Base.logger = Logger.new(STDOUT)

# log the output from the terminal as your ActiveRecord helper methods execute
# SQL commands and create changes to the schema

require_all 'app'

# require_all is a gem that will import all folders / files within the parent directory
