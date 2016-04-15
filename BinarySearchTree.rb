require 'treenode'
class BinarySearchTree
	attr_accessor :root
  def initialize
    @root = nil
  end

  def is_empty?
    return false if @top
    true
  end

  # In-order traversal without allowance of duplicate numbers.
  def insert(data)
    current_node = @root
    if @root
      while current_node != nil
        if data < current_node.data && current_node.left == nil
          current_node.left = TreeNode.new(data)
        elsif data > current_node.data && current_node.right == nil
          current_node.right = TreeNode.new(data)
        elsif data < current_node.data
          current_node = current_node.left
        elsif data >= current_node.data
          current_node = current_node.right
        else
          return
        end
      end
    else
      @root = TreeNode.new(data)
    end
  end

  def contains(data)
  	current_node = @root
  	if @root
  		until !current_node || current_node.data == data
  			if data < current_node.data
  				current_node = current_node.left
  			elsif data > current_node.data
  				current_node = current_node.right
				end
  		end
  		if !current_node
  			return "#{data} not found."
  		else
  		  return "#{data} found"
  		end
  	end
  end

  def print_order(head)
  	if head == nil
  		return
  	end
  	print_order(head.left)
  	p head.data
  	print_order(head.right)
  end
end
