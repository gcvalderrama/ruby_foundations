# Use this class to create linked lists.
class Node
    attr_accessor :value
    attr_accessor :child

    def initialize(value, child=nil)
        @value = value
        @child = child
    end
end


# Implement your function below.
def nth_from_last(head, n)

    if !head
        return nil
    end

    pointer_a = head
    pointer_b = head

    for i in 0...n        
        pointer_a = pointer_a.child
        if !pointer_a
            return nil
        end
    end
    j = pointer_a
    while pointer_a 
        pointer_b = pointer_b.child
        pointer_a = pointer_a.child
    end

    return pointer_b.value
end


# NOTE: Feel free to use the following function for testing.
# It converts the given linked list into an easy-to-read string format.
# Example: 7 -> 6 -> 5 -> 4 -> 3 -> 2 -> 1 -> (None)
def linked_list_to_string(head)
    current = head
    str_list = []
    while current
        str_list.push(current.value.to_s)
        current = current.child
    end
    str_list.push('(None)')
    return str_list.join("-->")
end

# NOTE: The following input values will be used for testing your solution.
current = Node.new(1)
for i in 2...8
    current = Node.new(i, current)
end
head = current
# head = 7 -> 6 -> 5 -> 4 -> 3 -> 2 -> 1 -> (None)
#print linked_list_to_string(head)

current2 = Node.new(4)
for i in 3.downto(1)
    current2 = Node.new(i, current2)
end
head2 = current2

# head2 = 1 -> 2 -> 3 -> 4 -> (None)

#print linked_list_to_string(head2)

print nth_from_last(head, 1) # should return 1.
print nth_from_last(head, 5) # should return 5.
print nth_from_last(head2, 2) # should return 3.
print nth_from_last(head2, 4) # should return 1.
print nth_from_last(head2, 5) # should return None.
print nth_from_last(nil, 1) # should return None.
