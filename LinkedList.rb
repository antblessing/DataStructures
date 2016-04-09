require 'node'
class LinkedList
  
  def initialize
    @head = nil
    @tail = @head
    @length = 0
  end

  def add_at_index(index, data)
      if index > @length - 1
        puts "That index does not exist."
      else
        current_node = @head
        (index - 1).times do
          current_node = current_node.next_node
        end
        new_node = Node.new(data)
        save_node = current_node.next_node
        current_node.next_node = new_node
        new_node.next_node = save_node
        @length += 1
      end
    end


    def append(data)
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
      @length += 1
    end

    def delete_at_index(index)
      if index > @length - 1
        puts "That index does not exist."
      else
        current_node = @head
        (index - 1).times do
          current_node = current_node.next_node
        end
        delete = current_node.next_node
        current_node.next_node = current_node.next_node.next_node
        delete = nil
        @length -= 1
      end
    end

    def print
      current_node = @head
      while current_node != nil
        puts "#{current_node.data}"
        current_node = current_node.next_node
      end
    end
end
