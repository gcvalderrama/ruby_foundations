def common_elements(list1, list2)
    i = 0 
    j = 0 
    list1.sort!
    list2.sort!
    result = []
    while i < list1.size && j < list2.size
        if list1[i] == list2[j]
            result.push(list2[j])
            i += 1
            j += 1
        elsif list1[i] < list2[j]
            i += 1
        else
            j += 1
        end
    end
    return result
end


# NOTE: The following input values will be used for testing your solution.
list_a1 = [1, 3, 4]
list_a2 = [1, 2, 4]
print  common_elements(list_a1, list_a2) # should return [1, 4, 9] (a list).


# NOTE: The following input values will be used for testing your solution.
list_a1 = [1, 3, 4, 6, 7, 9]
list_a2 = [1, 2, 4, 5, 9, 10]
print common_elements(list_a1, list_a2) # should return [1, 4, 9] (a list).

list_b1 = [1, 2, 9, 10, 11, 12]
list_b2 = [0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 14, 15]
print  common_elements(list_b1, list_b2)  # should return [1, 2, 9, 10, 12] (a list).

list_c1 = [0, 1, 2, 3, 4, 5]
list_c2 = [6, 7, 8, 9, 10, 11]
print  common_elements(list_c1, list_c2) # should return [] (an empty list).