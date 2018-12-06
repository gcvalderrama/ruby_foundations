# Implement your function below.

def is_valid(x, y , num_rows, num_cols, field)    
    return (0 <= x && x < num_rows) && (0 <= y && y < num_cols)     
end

def click(field, num_rows, num_cols, given_i, given_j)

    if !is_valid(given_i, given_j, num_rows, num_cols, field)
        return field
    end
    if field[given_i][given_j] == -1 
        return field
    end
    if field[given_i][given_j] == 0
        
        field[given_i][given_j] = -2        
       

        click( field, num_rows, num_cols, given_i -1, given_j - 1 )
        click( field, num_rows, num_cols, given_i -1, given_j  )
        click( field, num_rows, num_cols, given_i -1, given_j + 1 )

        click( field, num_rows, num_cols, given_i , given_j - 1 )
        click( field, num_rows, num_cols, given_i , given_j + 1 )

        click( field, num_rows, num_cols, given_i + 1, given_j - 1 )
        click( field, num_rows, num_cols, given_i + 1, given_j  )
        click( field, num_rows, num_cols, given_i + 1, given_j + 1 )
    
    end

    return field
end


# NOTE: Feel free to use the following function for testing.
# It converts a 2-dimensional array (a list of lists) into
# an easy-to-read string format.

def to_string(given_array)    
    list_rows = []
    for row in given_array
        list_rows.push(row.to_s)
    end

    return '[' + list_rows.join + ']'
end
   

# NOTE: The following input values will be used for testing your solution.
field1 = [[0, 0, 0, 0, 0],
          [0, 1, 1, 1, 0],
          [0, 1, -1, 1, 0]]

#print click(field1, 3, 5, 2, 2)  # should return:
# [[0, 0, 0, 0, 0],
#  [0, 1, 1, 1, 0],
#  [0, 1, -1, 1, 0]]

# print click(field1, 3, 5, 1, 4) #should return:
# [[-2, -2, -2, -2, -2],
#  [-2, 1, 1, 1, -2],
#  [-2, 1, -1, 1, -2]]


field2 = [[-1, 1, 0, 0],
          [1, 1, 0, 0],
          [0, 0, 1, 1],
          [0, 0, 1, -1]]

# print click(field2, 4, 4, 0, 1) # should return:
# [[-1, 1, 0, 0],
#  [1, 1, 0, 0],
#  [0, 0, 1, 1],
#  [0, 0, 1, -1]]

print  click(field2, 4, 4, 1, 3) # should return:
# [[-1, 1, -2, -2],
#  [1, 1, -2, -2],
#  [-2, -2, 1, 1],
#  [-2, -2, 1, -1]]
