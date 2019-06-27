class PetShop

  attr_accessor :name, :city, :pet_types
  @@all = []

  def initialize(name, city, pet_types)
    @name = name
    @city = city
    @pet_types = pet_types

    @@all << self
  end

  def cats
    Cat.all.select do |cat|
      cat.pet_shop == self
    end
  end

  def stock
    self.cats.length
  end

  def self.all
    @@all
  end
end # end of PetShop class