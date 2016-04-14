require 'tree_node'
class BinarySearchTree
  def initialize
    @root = nil
  end

  def is_empty?
    return false if @top
    true
  end
  def insert(data)
    current_node = @root
    if @root
      while current_node != nil
        if data < current_node && current_node.left = nil
          current_node.left = TreeNode.new(data)
        elsif data > current_node && current_node.right = nil
          current_node.right = TreeNode.new(data)
        elsif data < current_node
          current_node = current_node.left
        elsif data > current_node
          current_node = current_node.right
        end
      end
    else
      @root = TreeNode.new(data)
    end
  end
end
