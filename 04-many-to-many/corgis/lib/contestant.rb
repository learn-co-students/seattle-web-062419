class Contestant
  attr_reader :corgi, :race
  @@all = []
      
  # accepts an instance of the Corgi class
  # and an instance of the Race class
  def initialize(corgi, race)
    @corgi = corgi
    @race = race

    @@all << self
  end

  def self.all
    @@all
  end

  def to_s
    "Race: #{@race.name} with #{@corgi.name}"
  end
end