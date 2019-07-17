## SWBATs

### Sinatra

 - [x] Understand the implementation of the _7 RESTful routes_ in Sinatra

| CRUD Letter | RESTful Route          | Controller Action |
|-------------|------------------------|-------------------|
| C(reate)    | GET    /books/new      | new               |
| C(reate)    | POST   /books          | create            |
| R(ead)      | GET    /books          | index             |
| R(ead)      | GET    /books/:id      | show              |
| U(pdate)    | GET    /books/:id/edit | edit              |
| U(pdate)    | PATCH  /books/:id      | update            |
| D(elete)    | DELETE /books/:id      | destroy           |

 - [x] Important parts of an HTML form
    - `action` and `method` are the two parts of the RESTful route
    - Different types of inputs
 - [x] Relationship between forms and params hash
 - [x] "Hacking the internet", AKA "the RESTful routes are a lie!!!"
    - `set :method_override, true`
    - `<input type="hidden" name="_method" value="patch">`

### High-Level Development Practices
 - [x] Test controller actions with Postman
    - Manual redirect (difference between `erb` and `redirect`)
 - [x] Know which questions to ask when given a new user story
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
 - [x] As a site visitor, I should be able to create a new book
 - [x] As a site visitor, I should be able to edit an existing book
 - [x] As a site visitor, I should be able to delete an existing book via a button on the edit form
 
Note: there are three total commits associated with this lecture:
1. [Setup (same code from yesterday + new README)](https://github.com/learn-co-students/seattle-web-062419/commit/c15d4737d741350534e878dd6f7fff1a06cbd266)
2. [Code from lecture (added new, create, edit, update)](https://github.com/learn-co-students/seattle-web-062419/commit/a719f0ca611a3705e6f4ab6ca7c19c8b42d57704)
3. [Code from after lecture (added delete)](https://github.com/learn-co-students/seattle-web-062419/commit/be72cb36d19093003d2bec57271f897d3097358a)
