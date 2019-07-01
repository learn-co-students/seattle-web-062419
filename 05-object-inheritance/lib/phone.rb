
module Phone

  module InstanceMethods

    def make_call
      puts "HEEEEYYYY"
      puts "Pick up grams!"
    end
  end

  module ClassMethods
    def who_am_i
      puts self
    end
  end

end