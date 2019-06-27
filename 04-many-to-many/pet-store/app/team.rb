class Team

  attr_accessor :name, :colors, :city, :mascot
  @@all = []

  def initialize(name, colors, city, mascot)
    @name = name
    @colors = colors
    @city = city
    @mascot = mascot
    @@all << self
  end

  def self.all
    @@all
  end

  def contracts
    Contract.all.select do |contract|
      contract.team == self
    end
  end

  def length_of_all_contracts
    # you have a stack of contracts
    # you'd write a list
    # pick up a contract and look for its length
    # write the length of the contract on a piece of paper
    # repeat!
    self.contracts.collect do |contract|
      contract.length
    end
  end

  def players
    # you have a stack of contracts
    # you'd write a list
    # pick up a contract and look for its player
    # write the player of the contract on a piece of paper
    # repeat!
    self.contracts.collect do |contract|
      contract.player
    end
  end



end # end of Team class