def rotate_sub(i, j, n)
    return j, n - 1 - i
end

def rotate(given_array, n)
    rotated = Array.new(n){ Array.new(n) { 0 }}
    for i in 0...n
        for j in 0...n                        
            a, b = rotate_sub(i, j, n)            
            rotated[a][b] = given_array[i][j]
        end
    end
    return rotated
end

a1 = [[1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]]

print rotate(a1, 3) #  should return:
# [[7, 4, 1],
#  [8, 5, 2],
#  [9, 6, 3]]

a2 = [[1, 2, 3, 4],
[5, 6, 7, 8],
[9, 10, 11, 12],
[13, 14, 15, 16]]
# rotate(a2, 4) should return:
# [[13, 9, 5, 1],
#  [14, 10, 6, 2],
#  [15, 11, 7, 3],
#  [16, 12, 8, 4]]
