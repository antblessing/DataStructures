require 'stack'
class Queue

	def initialize
		@stack_in = Stack.new
		@stack_out = Stack.new
	end

	def empty?
		return true if @stack_in.is_empty?
		false
	end
	def add(data)
		@stack_in.push(data)
	end

	def size
		return @stack_in.size
	end

	def find_head
		self.empty_stack_in
		head = @stack_out.peek
		self.empty_stack_out
		return head
	end

	def remove
		self.empty_stack_in
		@stack_out.pop
		self.empty_stack_out
	end

  def empty_stack_in
    until @stack_in.is_empty?
      @stack_out.push(@stack_in.pop.data)
    end
  end

  def empty_stack_out
    until @stack_out.is_empty?
      @stack_in.push(@stack_out.pop.data)
    end
  end
end
