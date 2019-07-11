# Solution 3

def palindrome?(string)
    for i in (0..(string.length / 2 - 1))
        if string[i] != string[-1 - i]
            return false 
        end
    end 
    true
end

puts palindrome?("")
puts palindrome?("rr")
puts palindrome?("hanah")
puts palindrome?("flatiron")
puts palindrome?("hannah")