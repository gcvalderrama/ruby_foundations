def non_repeating(given_string)
    state = Hash.new { |hash, key| hash[key] = 0 }
    for i in given_string.chars
        state[i] += 1
    end
    for i in given_string.chars
        if state[i] == 1 
            return i
        end
    end
    return " "
end

print non_repeating("abcab") # should return 'c'
print non_repeating("abab") # should return None
print non_repeating("aabbbc") # should return 'c'
print non_repeating("aabbdbc") # should return 'd'