* Project structure
  * Open the repo in your editor
  * Take a moment to observe all the files
  * Remember to use `console.rb`
* Build basic classes
  * read the spec to determine properties classes have
  * read spec to determine what's attr_reader or writer
  * Once basic classes are built then instantiate
    examples of them in console.rb
  * Add print statements to make sure you can read 
    properties
  * run the program to make sure things work
* Build relationships between classes
  * These are the methods taht interact with @@all
  * Write in `console.rb` code that invokes them
  * use `puts` to verify they have the correct output
* Build "aggregate" methods
  * These methods do more than just select instances
    or pick off properties
  * These methods are often things like "find the most-viewed movie"
* Overall Tips
  * prefer `puts` to using `binding.pry`
  * print out useful information that describes what you expect the output to be
  * Use a single `puts` to create empty lines between sections
  * `binding.pry` requires you to wrire things over and over. it's slow!
  * `binding.pry` is great for when you want to investigate one tricky thing

* The actual code challenge uses Bundler
* Let's make sure to review that

```
require 'bundler'

Bundler.require
require_rel '../app'
```
