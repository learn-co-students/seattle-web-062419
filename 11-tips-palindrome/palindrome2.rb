# Solution 2

def palindrome?(string)
    string1=string
    string2=string.reverse
    if string1==string2
       return true
    else 
       return false
    end    
end

puts palindrome?("")
puts palindrome?("rr")
puts palindrome?("hanah")
puts palindrome?("flatiron")
puts palindrome?("hannah")