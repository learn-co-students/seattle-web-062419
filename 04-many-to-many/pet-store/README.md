# Many to Many Relationships

## SWBATs

* [ ] Implement both sides of a many to many relationship
* [ ] Practice keeping groups of data related to classes on the class as a class variable
* [ ] Demonstrate _Single Source of Truth_ by **not** storing collections of objects on other objects
* [ ] Demonstrate _Single Source of Truth_ by **not** storing one object in multiple collections

## Outline

* Review Relationships (one to many => `has_many`, `belongs_to`)
  * Go through other example domains
* Expand on relationships to express many to many
  * We'll build out a **new** relationship from scratch to teach this concept

### Define

* _Model_ - A class whose primary responsibility is to store data
* _Domain_ - The subject matter of the problem, (e.g., Learn's domain is online education)
* _Domain modeling_ - Creating models for your domain to represent real or abstract ideas (e.g., Learn's domain model includes modules, cohorts, assignments as well as their relationships)
* _Relationships_ - How one model or thing is connected to another model or thing
  * _One to many relationship_ - A relationship describing a single model that contains or keeps track of other models (a tree has many leaves, an organism has many cells, the universe has many galaxies)
  * _Many to many relationship_ (today!)
  * `belongs_to`
  * `has_many`
  * `through`
* _Schema_ - A visual representation of your data (models, relationships, etc.)
* [_Single Source of Truth_](https://en.wikipedia.org/wiki/Single_source_of_truth) - The practice of structuring _models_ and _relationships_ such that every data element is stored exactly once; any possible linkages to this data element are by reference only
  * **Why?** - Ask yourself, in the _one to many relationship_ of country to citizen, is it easier for the country to know about all of its citizens or is it easier for a citizen to know the which country they belong to? So how does a country find out its citizens? It conducts a census (a method) that asks all the people in the country if they are a citizen!



Teachers >-< Students
Teacher -< Class >- Student

Movies >-< Actors
Movies -< Role >- Actor

Buyers >-< Sellers
Buyer -< Transaction >- Seller


SocialMedias >-< Users
SocialMedia -< Account >- User

CoffeeShops >-< Customers
CoffeeShop -< Purchase >- Customer

Breweries >-< Beers
Brewery -< Recipe >- Beer


1. Look at the contracts
2. Compare the team's contracts and the player's contract and check to see that they are equal


1. Inside contracts, we could create a class variable that stores a hash and pushes in that contract's instance 

1. Run the contracts method on the player
2. Map through the response and find all the teams from that array

1. Create a new instance method that calls the contracts method
2. Map through the response and find all the teams from that array
















