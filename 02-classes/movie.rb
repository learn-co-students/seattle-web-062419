require 'pry'

class Movie
  attr_reader :title, :genre, :views
  attr_writer :genre
  attr_accessor :rating

  @@all = []

  def initialize(title, genre, rating)
     @title = title
     @genre = genre
     @rating = rating
     @views = 0

     @@all << self
  end

  def watch
    @views += 1
  end

  def to_s
    "#{@title} (watched #{@views} times.)"
  end

  # synonymous with "Movie.total_views"
  # "self" refers to the class here
  def self.total_views
    sum = 0
    @@all.each do |movie|
      sum += movie.views
    end
    sum
  end

  def Movie.most_watched_movie
    # Manually iterate through all the movies to
    # determine which one has been viewed the most.
    # most_viewed = @@all.first
    # @@all.each do |movie|
    #   if movie.views > most_viewed.views
    #     most_viewed = movie
    #   end
    # end
    # return most_viewed

    # opt for using the built-in Ruby sort_by method
    @@all.sort_by do |movie|
      movie.views
    end
    return @@all.last
  end

  # accepts a string representing a genre
  # and returns a list of movies matching that genre
  # returns a array of movie instances [<Movie>, <Movie>, ...]
  def self.select_genre(genre)
    @@all.select do |movie|
      movie.genre == genre
    end
  end

  # Return an array of strings of each unique genre
  # across all of the movies
  def self.all_genres
    # .select - returns elements of an array according to some "truth test"
    # .collect / .map - both mean the same thing. they turn each element of the array into something else
    # .filter - returns an array of only elements that match a truth test

    # .find - returns only the first element matching a test
    # .join - glues array elements together with a string
    # .include? - returns true/false if a given value is an element in the array
    # .uniq - takes an array and dedupes it so everything left is unique

    # what is the type of the attribute @@all?
    # it's an array of Movie instances [<Movie>, <Movie>]
    # we can ".collect" the .genre string property off each movie
    genres = @@all.collect do |movie|
      movie.genre
    end
    # genre is an array of strings, like ["Family", "Family", "Action", "Action"]
    # .uniq leaves it as just ["Family", "Action"]
    genres.uniq
  end
end

puts "Hello. Welcome to your movie library system."
puts "You're favorite movie is: #{Movie.most_watched_movie}"
puts "You have these genres: #{Movie.all_genres}"
puts

puts "Ah. You have no movies yet. Let's buy some now."
m1 = Movie.new("Homeward Bound", "Family", "PG")
m2 = Movie.new("Big Green", "Family", "PG")
m3 = Movie.new("The Matrix", "Action", "PG-13")
m4 = Movie.new("John Wick 3", "Action", "R")

m1.watch
m1.watch
m1.watch

m2.watch
m2.watch
m2.watch
m2.watch

puts "Total views for all movies: #{Movie.total_views}"
puts
puts m1
puts m1.genre
puts

puts m2
puts m2.genre
puts

puts "You're favorite movie is: #{Movie.most_watched_movie}"
puts "You have these genres: #{Movie.all_genres}"
puts

puts Movie.select_genre("Action")