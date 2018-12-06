# Use this class to create binary trees.
class Node
    attr_accessor :value
    attr_accessor :left
    attr_accessor :right
    def initialize(value, left=nil, right=nil)
        @value = value
        @left = left
        @right = right
    end
end

# Implement your function below.
def is_bst(node, lower_lim=nil, upper_lim=nil)
    if lower_lim && node.value < lower_lim
        return  false
    end
    if upper_lim && node.value > upper_lim
        return  false
    end

    is_left_bst = true
    is_right_bst = true

    if node.left
        is_left_bst = is_bst(node.left, lower_lim, node.value)
    end
    if node.left && node.right
        is_right_bst = is_bst(node.right, node.value, upper_lim)
    end

    return is_left_bst && is_right_bst
end

def create_tree(mapping, head_value)
    
    head = Node.new(head_value)
    nodes = {}
    nodes[head_value] = head

    mapping.each do |key, value|
        nodes[value[0]] = Node.new(value[0])
        nodes[value[1]] = Node.new(value[1])
    end
    
    
    mapping.each do |key, value|        
        nodes[key].left = nodes[value[0]]
        nodes[key].right = nodes[value[1]]
    end

    return head
end


# NOTE: The following values will be used for testing your solution.

# The mapping we're going to use for constructing a tree.
# {0: [1, 2]} means that 0's left child is 1, and its right
# child is 2.
mapping1 = {0 => [1, 2], 1 => [3, 4], 2 => [5, 6]}
mapping2 = {3 => [1, 4], 1 => [0, 2], 4 => [5, 6]}
mapping3 = {3 => [1, 5], 1 => [0, 2], 5 => [4, 6]}
mapping4 = {3 => [1, 5], 1 => [0, 4]}
head1 = create_tree(mapping1, 0)
# This tree is:
#  head1 = 0
#        /   \
#       1     2
#      /\    / \
#     3  4  5   6
head2 = create_tree(mapping2, 3)
# This tree is:
#  head2 = 3
#        /   \
#       1     4
#      /\    / \
#     0  2  5   6
head3 = create_tree(mapping3, 3)
# This tree is:
#  head3 = 3
#        /   \
#       1     5
#      /\    / \
#     0  2  4   6
head4 = create_tree(mapping4, 3)
# This tree is:
#  head4 = 3
#        /   \
#       1     5
#      /\
#     0  4

print is_bst(head1) # should return False
print is_bst(head2) # should return False
print is_bst(head3)  # should return True
print is_bst(head4) # should return False