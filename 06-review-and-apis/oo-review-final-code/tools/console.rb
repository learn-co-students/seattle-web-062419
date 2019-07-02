# We need to require our environment file so that we have access to all our class files.
# Your environment.rb file will be set up for you going into the code challenge
# You will need to run bundle install to initiate the pry gem

require_relative '../config/environment.rb'

labyrinth = Film.new("Labyrinth","Golblin World")
goonies = Film.new("Goonies","Somewhere in Oregon")
neverending_story = Film.new("Neverending Story","A Galaxy Far Far Away w/ Flying Dog Dragons")

puts labyrinth.name
puts goonies.name
puts neverending_story.name

sundance = Festival.new("Sundance Film Festival", "Salt Lake City, UT")
nw = Festival.new("Northwest Film Festival", "Seattle, WA")
sxsw = Festival.new("SXSW Festival", "Austin, TX")

puts sundance.title
puts nw.title
puts sxsw.title

Film.all_introductions

amc = Screening.new("July 1, 2019", labyrinth, sundance)
movie_tavern = Screening.new("July 2, 2019", goonies, nw)
theater = Screening.new("July 1, 2019", labyrinth, sxsw)
amphitheater = Screening.new("July 6, 2019", neverending_story, sundance)

puts amc.date
puts amc.film
puts amc.festival

puts amphitheater.date
puts amphitheater.film
puts amphitheater.festival

puts amc.hometown_setting
puts movie_tavern.hometown_setting
puts theater.hometown_setting
puts amphitheater.hometown_setting

labyrinth.screen_at_festival(sundance, "July 25, 2019")

Screening.all.each { |screening| puts screening.date }

Screening.sorted_screenings.each { |screening| puts screening.date }

puts Film.most_festivals.name
puts sundance.screenings
puts sundance.films

Pry.start