class Corgi
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def enter(race)
    Contestant.new(self, race)
  end

  # write a method called "races"
  # that returns an array of each race this 
  # corgi has been in
  def races
    entries = Contestant.all.select do |contestant|
      # puts "#{contestant.corgi.name} == #{self.name}"
      contestant.corgi == self
    end.map do |contestant|
      contestant.race
    end
  end

  def self.all
    @@all
  end
end