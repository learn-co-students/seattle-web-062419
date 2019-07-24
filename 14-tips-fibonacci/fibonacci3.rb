# recursive solution

def fibonacci(n)
    return n if n == 0 || n ==1  
    (fibonacci(n-2)+fibonacci(n-1))
end


puts fibonacci(3)
# 2
puts fibonacci(6)
# 8
puts fibonacci(20)
# 6765