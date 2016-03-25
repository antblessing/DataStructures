class Stack
  def initialize
    @top = nil
  end

  def is_empty?
  	return false if @top
    true
  end

  def search(data)
  	if @top == nil
  		puts "Stack is empty."
  	else
  		current_node = @top
  		offset = 0
  		until current_node.data == data
  			current_node = current_node.previous_node
  			offset += 1
  			if current_node.previous_node == nil && current_node.data != data
  				return ".1"
  			end
  		end
  		return "Item is #{offset} from the top of the stack."
  	end
  end

  def peek
  	return @top.data
  end

  def push(data)
  	if @top == nil
  		@top = Node.new(data)
  	else
  		new_node = Node.new(data)
  		new_node.previous_node = @top
  		@top = new_node
  	end
  end

  def pop
  	if @top == nil
  		puts "Stack is empty."
  	else
  		current_node = @top
  		@top = current_node.previous_node
  		current_node = nil
  	end
  end
end
