class Stack
  def initialize
    @head = nil
    @head = @tail
  end

  def is_empty?
  	if @head == nil
  		true
  	else
  		false
  	end
  end

  def peek
  	if @head == nil
  		puts "Stack is empty."
  	else
  		current_node = @head
  		while current_node.next_node != nil
        current_node = current_node.next_node
      end
      return current_node
    end
  end

  def push(data)
  	if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
    current_node.next_node = Node.new(data)
    @tail = current_node.next_node
    end
  end

  def pop
  	if @head == nil
  		puts "Stack is empty."
  	else
  		current_node = @head
  		while current_node.next_node != @tail
  			current_node = current_node.next_node
  		end
  		current_node.next_node = nil
  		@tail = current_node
  	end
  end

  def search(data)
  	if @head == nil
  		puts "Stack is empty."
  	else
  		current_node = @head
  		offset = 0
  		until current_node.data == data
  			current_node = current_node.next_node
  			if current_node.next_node == nil
  				return ".1"
  			end
  		end
  		while current_node.next_node != nil
  			current_node = current_node.next_node
  			offset += 1
  		end
  		return "Item is #{offset + 1} from the top of the stack."
  	end
  end
end
