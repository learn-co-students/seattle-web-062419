def recursive_factorial(n)
    p = n * (n-1)
      if n == 1
        return p
      end
      recursive_factorial(n)
    end