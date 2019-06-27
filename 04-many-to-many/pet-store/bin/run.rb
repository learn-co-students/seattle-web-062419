require_relative "../config/environment"


# t1 = Team.new("Beef", ["Black", "Brown"], "Wellington", "Cow")
# t2 = Team.new("Jazz", ["Purple", "Green"], "Salt Lake City", "Bear")
# t3 = Team.new("Bearcats", ["Black", "Orange"], "Monroe", "Bearcat")

# p1 = Player.new("Alan Anderson", 8, 12, 13, 15,16, 18, 9, 10) #, t1)
# p2 = Player.new("Jeff Adrian", 8, 12, 13, 15,16, 18, 9, 10) #, t2)
# p3 = Player.new("Bismak Biyombo", 8, 12, 13, 15,16, 18, 9, 10) #, t2)
# p4 = Player.new("Ben Gordon", 8, 12, 13, 15,16, 18, 9, 10) #, t3)
# p5 = Player.new("Reggie Evans", 8, 12, 13, 15,16, 18, 9, 10) #, t1)
# p6 = Player.new("Brook Lopez", 8, 12, 13, 15,16, 18, 9, 10) #, t1)


# c1 = Contract.new(t1, p1, 2, 1000000)
# c2 = Contract.new(t1, p3, 1, 100000)
# c3 = Contract.new(t1, p5, 3, 3000000)
# c4 = Contract.new(t1, p6, 1, 700000)
# c5 = Contract.new(t2, p1, 2, 1500000)
# c6 = Contract.new(t2, p2, 3, 10000)
# c7 = Contract.new(t2, p4, 1, 10000)
# c8 = Contract.new(t3, p4, 3, 100000)
# c9 = Contract.new(t3, p5, 2, 1000000)
# c10 = Contract.new(t3, p6, 2, 800000)


# ps1 = PetShop.new("Cat City", "Seattle", "cats")
# ps2 = PetShop.new("Cat Depot", "L.A.", "cats")

# c1 = Cat.new( 7, ps1, "Garfield", "tabby")
# c2 = Cat.new( 3, ps1, "Felix", "calico")
# c3 = Cat.new( 5, ps1)
# c4 = Cat.new( 12, ps2)


5.times do |x|
  Buyer.new("buyer#{x}", rand(0..10000))
end

5.times do |x|
  Seller.new("seller#{x}", [])
end


20.times do |x|
  Transaction.new(Buyer.all.sample, Seller.all.sample, rand(0...1000), "item#{x}")
end






binding.pry

# so how to store a list of Players on a Team object
  # we use a hash so that we can keep the attributes of the players
  # we keep Players inside an array on the Team, which has as its elements Player objects
  # database <-- we'll talk about this in week 2!

# how do does a Player know about its team?
  # store the Team object inside of an instance variable

# how then does a Player know about its teammates

