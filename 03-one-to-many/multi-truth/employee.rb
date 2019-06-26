class Person
  attr_reader :name, :employer
  attr_writer :employer
  @@all = []

  def initialize(name)
    @name = name
    @employer = nil

    @@all << self
  end

  def to_s
    @name
  end
end