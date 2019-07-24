def recursive_factorial(n)
    if n == 1
       1
    else
       n * recursive_factorial(n-1)
    end
  end