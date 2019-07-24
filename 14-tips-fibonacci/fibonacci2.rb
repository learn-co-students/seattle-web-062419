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

puts fibonacci(3)
# 2
puts fibonacci(6)
# 8
puts fibonacci(20)
# 6765