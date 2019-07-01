class CellPhone

  include Phone::InstanceMethods

  def make_call
      puts "Hey, grams!!"
  end

  private

  def turn_on
      puts "I'm on!"
  end

end
