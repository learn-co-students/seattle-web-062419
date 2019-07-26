def f_b(input)
    if input % 3 == 0 && input % 5 != 0
      puts "Fizz"
    elsif input % 5 == 0 && input % 3 != 0
      puts "Buzz"
    elsif input % 3 == 0 && input % 5 == 0
      puts "FizzBuzz"
    end
  end
  
  #f_b(3)
  #f_b(6)
  #f_b(10)
  #f_b(15)