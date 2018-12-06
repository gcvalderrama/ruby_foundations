
def is_valid(x, y , num_rows, num_cols, field)    
    res = (0 <= x && x < num_rows) && (0 <= y && y < num_cols)     
    if res 
        
        return field[x][y] == -1 ? 1 : 0
    else
        return 0
    end
    
end

def mine_sweeper(bombs, num_rows, num_cols)
    # NOTE: field = [[0] * num_cols] * num_rows would not work
    # because you need to create a new list for every row,
    # instead of copying the same list.
    field = Array.new(num_rows){ Array.new(num_cols){ 0 }}    

    for b in bombs
        field[b[0]] [ b[1]] = -1
    end

    i = 0 
    j = 0 
    # -1 0 1
    # -1 0 1
    # -1 1 1
    while i < num_rows         
        j = 0
        while j < num_cols                    
            if field[i][j] != -1                              
                count = 0 
                count += is_valid(i-1, j-1, num_rows, num_cols, field)
                count += is_valid(i-1, j, num_rows, num_cols, field) 
                count += is_valid(i-1, j+1, num_rows, num_cols, field)
    
                count += is_valid(i, j-1, num_rows, num_cols, field)
                count += is_valid(i, j+1, num_rows, num_cols, field)
    
                count += is_valid(i+1, j-1, num_rows, num_cols, field)
                count += is_valid(i+1, j, num_rows, num_cols, field) 
                count += is_valid(i+1, j+1, num_rows, num_cols, field)
                
                field[i][j] = count
            end
            j += 1            
        end
        
        i += 1
    end

    return field
end

def to_string(given_array)    
    list_rows = []
    for row in given_array
        list_rows.push(row.to_s)
    end

    return '[' + list_rows.join + ']'
end
   


# NOTE: The following input values will be used for testing your solution.
print to_string( mine_sweeper([[0, 2], [2, 0]], 3, 3) ) # should return:
# [0, 0 ,-1] [0, 0 ,0] [-1, 0 , 0]
# [[0, 1, -1],  [1, 2, 1], [-1, 1, 0]]
puts "======="

print to_string( mine_sweeper([[0, 0], [0, 1], [1, 2]], 3, 4)) # should return:
# [[-1, -1, 2, 1],
#  [2, 3, -1, 1],
#  [0, 1, 1, 1]]
puts "======="
print to_string(mine_sweeper([[1, 1], [1, 2], [2, 2], [4, 3]], 5, 5)) # should return:
# [[1, 2, 2, 1, 0],
#  [1, -1, -1, 2, 0],
#  [1, 3, -1, 2, 0],
#  [0, 1, 2, 2, 1],
#  [0, 0, 1, -1, 1]]