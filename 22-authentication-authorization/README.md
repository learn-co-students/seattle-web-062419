## Objectives
- Understand, theoretically how authentication works
- Understand theoretically how authorization work
- Implement Sign in vs sign up
- Review sessions, cookies
- Implement log in, and log out

## Authentication && Authorization
1. What is authentication?
  - are you who you say you are.
  - login/logout/signup.
2. What is authorization?
  - access level
  - what am I authorized access to.
    - what pages can I see.

  - Discuss different encryption and hashing schemes
  - For Example :  `Digest::SHA256.base64digest`
    - deterministic: same input => same output
    - introduce `bcrypt`
  - `has_secure_password` macro
  - Augment a user model in rails using `bcrypt`

## User Stories
1. As a registered user, I should be able to log in by providing my username.
  - This is Authentication
  - User is not the same as a student.
    - Model (Yes, add a user model)
      - Migrations
        - Create a users table
      - Associations
      - Seed
    - Controller Action/Routes
      -> User should be able to sign up first.
    - Views
  - Login for your site :
    - Model
      - No new models need to be created for auth.
    - Controller
      - Auth
    - Action
      - login(get)
      - verify (post)
      - logout (get)
    - View
      - login
2. I should be able to add a password to my site and validate user.

3. As an un-authenticated user, I should not be able to see a list of students and information about an individual student.

4. As an authenticated user I should be able see a list of students and information about an individual student plus create a new student.

5. If an un-authenticated user tries to see the new student form, they should be redirected to the login page.

## Resources
##### Password Authentication Guidelines

- install gem `bcrpyt`
- you don't store passwords as plain text
  - add a password_digest column.
  - add `has_secure_password` to the model with the password.
- at signin use the bcrypt authenticate method to confirm that the password matches
- password hashing is one-way encryption (we never decrypt it)

- [Digest](https://ruby-doc.org/stdlib-2.2.1/libdoc/digest/rdoc/Digest.html)
- [BCrypt](https://github.com/codahale/bcrypt-ruby)
