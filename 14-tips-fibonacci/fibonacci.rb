def fibonacci(number)
    a = 0
    b = 1
    number.times do
      c = a
      a = b
      b = c + b
    end
    return a
end

start = Time.now
fibonacci(20)
final = Time.now
puts "Solution 1 Run Time:"
puts (final-start)*1000
puts

def fibonacci(n)
	if n == 1 || n == 2
		return 1
	end
    fibonacci = [1, 1]
    (n - 2).times do |i|
        fibonacci.push(fibonacci[i + 1] + fibonacci[i])
    end 
    fibonacci[-1]
end

start = Time.now
fibonacci(20)
final = Time.now
puts "Solution 2 Run Time:"
puts (final-start)*1000
puts

def fibonacci(n)
    return n if n == 0 || n ==1  
    (fibonacci(n-2)+fibonacci(n-1))
end

start = Time.now
fibonacci(20)
final = Time.now
puts "Solution 3 RECURSION Run Time:"
puts (final-start)*1000
puts