class Business
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def hire(employee)
    employee.employer = self
  end

  def employees
    Person.all.select do |person|
      person.employer == self
    end
  end

  # returns the business with the most employees
  def self.biggest_employer
    sorted = @@all.sort_by do |business|
      business.employees.length
    end
    sorted.last
  end

  def to_s
    @name
  end
end