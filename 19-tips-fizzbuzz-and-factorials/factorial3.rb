def recursive_factorial(n)
    counter = n
    until counter == 1
      n *= recursive_factorial(n-1)
      counter -= 1
    end
    n
  end
  
  recursive_factorial(4)