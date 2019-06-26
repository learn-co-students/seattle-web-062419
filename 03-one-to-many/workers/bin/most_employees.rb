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

puts "Who has the most employees?"
business = Business.biggest_employer
puts "#{business.name} has the most employees with #{business.employees.length} employees"