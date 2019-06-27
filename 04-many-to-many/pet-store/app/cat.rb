class Cat

  attr_accessor :name, :breed, :age, :pet_shop
  @@all = []

  def initialize(age, pet_shop, name="Bugsy", breed="Mix")
    @name = name
    @breed = breed
    @age = age
    @pet_shop = pet_shop
    @@all << self
  end

  def self.all
    @@all
  end


end # end of Cat class