## SWBATs

### Sinatra

 - [ ] Understand the implementation of the _7 RESTful routes_ in Sinatra

| CRUD Letter | RESTful Route          | Controller Action |
|-------------|------------------------|-------------------|
| R(ead)      | GET    /books          | index             |
| R(ead)      | GET    /books/:id      | show              |

 - [ ] Important parts of an HTML form
    - `action` and `method` are the two parts of the RESTful route
    - Different types of inputs
 - [ ] Relationship between forms and params hash
 - [ ] "Hacking the internet", AKA "the RESTful routes are a lie!!!"
    - `set :method_override, true`
    - `<input type="hidden" name="_method" value="patch">`

### High-Level Development Practices
 - [ ] Test controller actions with Postman
    - Manual redirect (difference between `erb` and `redirect`)
 - [ ] Know which questions to ask when given a new user story
   1. What new model(s) do I need?
       - New class?
       - New migration? (i.e. does the schema need to change?)
       - Associations?
       - Seeds?
   2. What route(s) do I need?
   3. What controller action(s) do I need?
       - In Sinatra, this means the code directly below the route, but in Rails it will be a separate file
   4. What view(s) do I need?

### Deliverables
 - [ ] As a site visitor, I should be able to create a new book
 - [ ] As a site visitor, I should be able to edit an existing book
 - [ ] As a site visitor, I should be able to delete an existing book via a button on the edit form
