class Player 
  attr_accessor :number, :shoe, :points, :rebounds, :assists, :steals, :blocks, :slam_dunks
  attr_reader :name
  @@all = []

  def initialize(name, number, shoe, points, rebounds, assists, steals, blocks, slam_dunks)
    @name = name
    @number = number
    @shoe = shoe
    @points = points
    @rebounds = rebounds
    @assists = assists
    @steals = steals
    @blocks = blocks
    @slam_dunks = slam_dunks
    @@all << self
  end

  def retire
    @@all.delete(self)
  end

  def dunk
    self.score_two
    @slam_dunks += 1
  end

  def lay_up
    self.score_two
  end

  def score_two
    @points += 2
  end

  def self.all
    @@all
  end

  def self.find_player(name)
    self.all.find do |player|
      player.name == name
    end
  end

  def contracts
    Contract.all.select do |contract|
      contract.player == self
    end
  end

  def teams
    self.contracts.map do |contract|
      contract.team
    end
  end

end # end of Player class








































