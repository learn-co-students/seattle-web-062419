class Contract

  @@all = []
  attr_reader :team, :player, :length, :salary
  def initialize(team, player,length=1,salary=750000)
    # Team object
    @team = team
    # Player object
    @player = player
    # Integer
    @length = length
    # Integer
    @salary = salary

    @@all << self
  end

  def self.all
    @@all
  end

end # end of Contract class