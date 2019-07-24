def fibonacci(number)
    a = 0
    b = 1
    number.times do
    #set final postion to the first index
      c = a
    # set first position to the initial middle position
      a = b
    # set middle to new 
      b = c + b
    end
    return a
end

puts fibonacci(3)
# 2
puts fibonacci(6)
# 8
puts fibonacci(20)
# 6765