require '../environment'

steve_jobs = Person.new("Steve Jobs")
henry_ford = Person.new("Henry Ford")
joe_shmoe = Person.new("Joe Shmoe")

ford = Business.new("Ford Motors")
apple = Business.new("Apple Computers")

ford.hire(henry_ford)
apple.hire(steve_jobs)
apple.hire(joe_shmoe)

puts "#{ford.name} has hired #{ford.employees.join(', ')}"
puts "#{apple.name} has hired #{apple.employees.join(', ')}"
puts

puts "#{henry_ford} is working for #{henry_ford.employer}"
puts "#{steve_jobs} is working for #{steve_jobs.employer}"
puts "#{joe_shmoe} is working for #{joe_shmoe.employer}"
puts

joe_shmoe.employer = ford

puts "#{ford.name} has hired #{ford.employees.join(', ')}"
puts "#{apple.name} has hired #{apple.employees.join(', ')}"
puts

puts "#{henry_ford} is working for #{henry_ford.employer}"
puts "#{steve_jobs} is working for #{steve_jobs.employer}"
puts "#{joe_shmoe} is working for #{joe_shmoe.employer}"
puts
