require_relative '../config/environment'

bella = Corgi.new("Bella")
jacko = Corgi.new("Jacko")
carry = Corgi.new("Carry")
fifo = Corgi.new("Fifo")
sadie = Corgi.new("Sadie")

roundup = Race.new("Corgi Roundup")
derby = Race.new("Kencorgi Derby")

bella.enter(roundup)
roundup.register(bella)

# manually create contestants for the corgis and the races
Contestant.new(bella, roundup)
Contestant.new(jacko, roundup)
Contestant.new(carry, roundup)

Contestant.new(carry, derby)
Contestant.new(fifo, derby)
Contestant.new(sadie, derby)

puts "Dogs in the derby:"
derby.racers.each do |racer|
  puts racer.name
end
puts

puts "Races Carry has done:"
carry.races.each do |race|
  puts race.name
end