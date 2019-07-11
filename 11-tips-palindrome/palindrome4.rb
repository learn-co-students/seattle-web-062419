# Solution 4

def palindrome?(string)
    i_left = 0
    i_right = string.length-1
    # run it for only half the string so the indices
    # never cross over and double-check things
    while i_left < i_right 
        if string[i_left] != string[i_right]
            return false 
        end 
        i_left += 1
        i_right -= 1
    end
    true
end

puts palindrome?("")
puts palindrome?("rr")
puts palindrome?("hanah")
puts palindrome?("flatiron")
puts palindrome?("hannah")