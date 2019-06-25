class Pet
  def initialize(name, type)
    @name = name
    @type = type
    @is_hungry = true
  end

  def name
    @name
  end

  def type
    @type
  end

  def feed
    @is_hungry = false
  end

  def walk
    @is_hungry = true
  end

  def to_s
    "#{@name} the #{@type} is hungry? #{@is_hungry}"
  end
end