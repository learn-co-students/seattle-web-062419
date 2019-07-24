def fizzbuzz
    (1..100).each do |n| 
    if n % 3 == 0
    puts "Fizz"
    elsif n % 5 == 0
    puts "Buzz"
    else (n/3 == 0) && (n/5 == 0)
    puts "FizzBuzz"
    end
    end
    end