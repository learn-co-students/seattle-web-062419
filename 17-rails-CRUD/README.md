## SWBATs
- Review REST
- Review MVC
- Finish Deliverables
4 questions to ask when building out your Deliverables
  - Model
  - Routes
  - Controller
  - Views


### Deliverables
 - [ ] **As a site visitor, I should be able to see all of the books in my library**
 - [ ] **As a site visitor, I should be able to view a specific book**
 - [ ] **As a site visitor, I should be able to create a new book**
 - [ ] **As a site visitor, update a specific book**
 - [ ] **As a site visitor, delete an existing book**

### Routes Summary
| CRUD | HTTP Verb  | Route  | Action  |  View | UsedFor |
|---|---|---|---|---|---|
| Create |GET&darr; | '/books/new'  | books#new  |'new.erb'  |  form page to create a new book |
| Create | POST | '/books'  |  books#new | Reroutes toindex| Creates a new book in the controller   |
| Read | GET  | '/books'  | books#index  |  index.erb|  displaying information about books  |
| Read |GET  | '/books/:id'  | books#show  |  show |display information about a specific book  |
|  Update | GET&darr; | 'books/:id/edit'  | books#edit| edit.erb  | Renders a form for user to edit  |
|  Update  | PATCH | 'books/:id'  | books#edit  | redirects to show | updates the attributes in a specific book |
| Delete  | "button" |  - |  - |  form with button in the show page | create a form so we can delete records and map it to an action  |
  |  Delete | Delete |  'books/:id' |  books#delete |  | deletes/destroys a specific book in the DB|
