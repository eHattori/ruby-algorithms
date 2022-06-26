class Node
  attr_accessor :value, :next

  def initialize(value, node)
    @value = value
    @next = node
  end
end

node3 = Node.new 3, nil
node2 = Node.new 2, node3
node1 = Node.new 1, node2

node = node1

puts "\nThis is a Linked list with While"
until node.nil?
  p "The Node #{node.object_id} with value #{node.value} point to #{!node.next.nil? ? node.next.object_id : 'nil'}"
  node = node.next
end

puts "\nThis is a Linked list with Recursion"
def print_next(node)
  if node.nil?
    return 0
  end
  p "The Node #{node.object_id} with value #{node.value} point to #{!node.next.nil? ? node.next.object_id : 'nil'}"
  print_next(node.next)
end

print_next(node1)
