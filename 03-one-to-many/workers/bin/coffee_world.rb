require_relative '../environment'

starbucks = Business.new('Starbucks')
caribou = Business.new('Caribou')
peets = Business.new('Peet\'s')

lisa = Person.new("Lisa")
bart = Person.new("Bart")
marge = Person.new("Marge")
homer = Person.new("Homer")

caribou.hire(lisa)

starbucks.hire(bart)
starbucks.hire(homer)

peets.hire(marge)

puts starbucks.employees
puts caribou.employees
puts peets.employees
