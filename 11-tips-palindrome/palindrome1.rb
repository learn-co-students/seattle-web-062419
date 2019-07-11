# Solution 1

def palindrome?(string)
    c = 0
    string.length.times do
        if string[c] != string[-(c+1)]
            return false
        end
        c += 1
    end
    true
end

puts palindrome?("")
puts palindrome?("rr")
puts palindrome?("hanah")
puts palindrome?("flatiron")
puts palindrome?("hannah")