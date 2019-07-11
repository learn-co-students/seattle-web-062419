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

start = Time.now
palindrome?("racecar")
final = Time.now
puts "Solution 1 Run Time:"
puts (final-start)*1000
puts

def palindrome?(string)
    string1=string
    string2=string.reverse
    if string1==string2
       return true
    else 
       return false
    end    
end

start = Time.now
palindrome?("racecar")
final = Time.now
puts "Solution 2 Run Time:"
puts (final-start)*1000
puts

def palindrome?(string)
    for i in (0..(string.length / 2 - 1))
        if string[i] != string[-1 - i]
            return false 
        end
    end 
    true
end

start = Time.now
palindrome?("racecar")
final = Time.now
puts "Solution 3 Run Time:"
puts (final-start)*1000
puts

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

start = Time.now
palindrome?("racecar")
final = Time.now
puts "Solution 4 Run Time:"
puts (final-start)*1000
puts



