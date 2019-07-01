class Landline

  extend Phone::ClassMethods
  include Phone::InstanceMethods
  
  def make_call
      super
      puts "Hey, grams!!"
  end

end