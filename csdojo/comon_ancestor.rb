class Node
    attr_accessor :left
    attr_accessor :right
    attr_accessor :value
    def initialize(value)
        @value = value
    end
end


def path_to_x(root, x)
    if !root
        return nil
    end
    if root.value == x
        return [x]
    end
    left_path = path_to_x(root.left, x)

    if left_path
        left_path.push(root.value)
        return left_path
    end
    right_path = path_to_x(root.right, x)

    if right_path
        right_path.push(root.value)
        return right_path
    end 
end

def lca (root, j , k)
    path_to_j = path_to_x(root, j)
    path_to_k = path_to_x(root, k)
    result = ""
    while !path_to_j.empty? && !path_to_k.empty?
        jpop = path_to_j.pop()
        kpop = path_to_k.pop()
        if jpop == kpop
            result = jpop
        else
            break
        end
    end 
    return result
end

root = Node.new(1)
root.left = Node.new(3)
root.left.left = Node.new(4)
root.left.right = Node.new(6)
root.left.right.left = Node.new(5)
root.right = Node.new(2)

print lca(root, 4, 5)