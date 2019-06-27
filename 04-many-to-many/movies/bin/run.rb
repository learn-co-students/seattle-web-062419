require_relative '../config/environment'

toy_story = Movie.new("Toy Story", "G", 1995)
Movie.new("Wall-E", "G", 2008)
Movie.new("The Lion King", "G", 1994)
Movie.new("Gone With the Wind", "G", 1939)
cars = Movie.new("Cars", "G", 2006)

Movie.new("Finding Dory", "PG", 2016)
shrek = Movie.new("Shrek 2", "PG", 2004)
Movie.new("Star Wars", "PG", 1977)
Movie.new("Inside Out", "PG", 2015)
Movie.new("Minions", "PG", 2015)

Movie.new("Avatar", "PG-13", 2009)
titanic = Movie.new("Titanic", "PG-13", 1997)
Movie.new("Crocodile Dundee", "PG-13", 1986)
mumnmy = Movie.new("The Mummy", "PG-13", 1999)
Movie.new("Dances With Wolves", "PG-13", 1990)

godfather = Movie.new("The Godfather", "R", 1972)
Movie.new("The Rocky Horror Picture Show", "R", 1975)
rainman = Movie.new("Rain Man", "R", 1988)
Movie.new("Saturday Night Fever", "R", 1977)
matrix = Movie.new("The Matrix", "R", 1999)
Movie.new("Saw II", "R", 2005)

Theater.new("The Grand Illusion", 1)
Theater.new("Central Cinema", 1)
amc = Theater.new("AMC Pacific Place", 8)
regal = Theater.new("Regal 16", 16)

Showing.new(amc, rainman, 4)
Showing.new(amc, rainman, 6)
Showing.new(amc, rainman, 8)
Showing.new(amc, toy_story, 3)
Showing.new(amc, toy_story, 8)

Showing.new(regal, rainman, 5)
Showing.new(regal, rainman, 7)
Showing.new(regal, shrek, 4)
Showing.new(regal, shrek, 7)

puts "Movies at Regal"
puts regal.movies
puts

puts "Most Shown Movie"
puts Movie.most_shown_movie.title