def is_one_away(s1, s2)
    if s1 == s2 
        return true
    end
    if (s1.size - s2.size).abs > 1
        return false
    end

    if s1.size < s2.size
        tmp = s1 
        s1 = s2
        s2 = tmp
    end

    i = 0 
    j = 0 

    changes = 0
    while i < s1.size && j < s2.size
        if s1[i] == s2[j]
            i += 1
            j += 1
        elsif changes == 1
            return false
        else
            if s1.size != s2.size 
                changes = 1                       
                i += 1    
            else
                changes = 1                       
                j += 1
                i += 1
            end 
            
        end
    end    
    return true
end

# NOTE: The following input values will be used for testing your solution.
puts is_one_away("abcde", "abcd")  # should return True
puts is_one_away("abde", "abcde")  # should return True
puts is_one_away("a", "a")  # should return True
puts is_one_away("abcdef", "abqdef")  # should return True
puts is_one_away("abcdef", "abccef")  # should return True
puts is_one_away("abcdef", "abcde")  # should return True
puts is_one_away("aaa", "abc")  # should return False
puts is_one_away("abcde", "abc")  # should return False
puts is_one_away("abc", "abcde")  # should return False
puts is_one_away("abc", "bcc")  # should return False
puts is_one_away("abcde", "abcdef")  # should return true
