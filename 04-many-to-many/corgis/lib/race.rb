class Race
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def register(corgi)
    Contestant.new(corgi, self)
  end

  # write a method called "racers" that returns an array
  # of all the corgis in this specific race
  def racers
    contestants = Contestant.all.select do |contestant|
      contestant.race == self
    end
    contestants.map do |contestant|
      contestant.corgi
    end
  end

  def self.all
    @@all
  end
end