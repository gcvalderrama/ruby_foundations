
def is_rotation(list1, list2)
    if list1.size != list2.size
        return false
    end
    j = list2.index(list1[0]) 

    if !j 
        return false
    end

    for item in list1        
        if item != list2[ j % list1.size ]
            return false
        end
        j += 1
    end
    return true

end

# NOTE: The following input values will be used for testing your solution.
list1 = [1, 2, 3, 4, 5, 6, 7]
list2a = [4, 5, 6, 7, 8, 1, 2, 3]
puts is_rotation(list1, list2a) # should return False.

list2b = [4, 5, 6, 7, 1, 2, 3]
puts is_rotation(list1, list2b) # should return True.

list2c = [4, 5, 6, 9, 1, 2, 3]
puts is_rotation(list1, list2c) # should return False.

list2d = [4, 6, 5, 7, 1, 2, 3]
puts is_rotation(list1, list2d) # should return False.

list2e = [4, 5, 6, 7, 0, 2, 3]
puts is_rotation(list1, list2e) #should return False.

list2f = [1, 2, 3, 4, 5, 6, 7]
puts is_rotation(list1, list2f) #should return True.