## ActiveRecord Pokemon README:

### Rake and File Structure

- Rake
  - We have a Rakefile that defines tasks to be run from the command line
  - To view tasks, run `rake -T` from your terminal
- File structure
  - Gemfile––what is a gemfile? Why on earth would we want to use one?
  - `app` folder holds our models––our Ruby classes
  - `db` directory holds migrations and seeds.rb file––what are our seeds?
  - `config` holds environment file
    - `require 'bundler'` and `Bundler.require` **load all of the gems in our Gemfile**
    - `ActiveRecord::Base.establish_connection` **sets up our database** (with options hash)
    - `require_all` **loads all of our application code**

---

### Migrations and Database Structure

- We started lecture with whiteboarding 3 models and building out their relationships and attributes
  - Pokemon --> name(string)
  - Move --> power(string), description(string)
  - PokemonMove --> pokemon_id(integer), move_id(integer)
- To get our database set up, we need to use the `rake db:create_migration NAME=create_moves`
  - `create_table` method which takes a block, the block takes a table builder
  - `t.string :power` to assign a type to the Move's power attribute

  ***

- Run migrations `rake db:migrate`
  - Our `schema.rb` will be generated when running the migration command
- Run rake `rake db:rollback` to "undo" the most recent migration
- Migrations and table names should be pluralized
- Ruby classes (Models) that relate to those migrations should be singular
  - These Ruby classes will inherit from `ActiveRecord::Base`
- Decently common ActiveRecord helper commands:
  - `create_table`
  - `add_column`
  - `remove_column`

  ***

[Active Record Methods](https://guides.rubyonrails.org/active_record_querying.html)
***
[Active Record Docs](http://edgeguides.rubyonrails.org/active_record_migrations.html#using-the-up-down-methods)
***
[Create Table Docs](https://apidock.com/rails/ActiveRecord/InternalMetadata/create_table/class)

