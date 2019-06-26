class Business
  attr_reader :name, :employees
  @@all = []

  def initialize(name)
    @name = name
    @employees = []

    @@all << self
  end

  def hire(employee)
    @employees << employee
    employee.employer = self
  end

  def to_s
    @name
  end
end