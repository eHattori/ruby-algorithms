require 'pry-byebug'

class Leaf
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
  end
end

root = Leaf.new(2)

leaf1 = Leaf.new(1)
leaf3 = Leaf.new(3)

root.left = leaf1
root.right = leaf3

puts "TREE: left-> #{root.left.value} value-> #{root.value} right-> #{root.right.value}  "

def search(tree, target)
  return false if tree.nil?

  if target < tree.value
    search(tree.left, target)
  elsif target > tree.value
    search(tree.right, target)
  else
    true
  end
end

p search(root, 1)
