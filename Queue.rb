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
		counter = 0
		until @stack_in.is_empty?
			@stack_out.push(@stack_in.peek)
			@stack_in.pop
			counter += 1
		end

		self.empty_stack_out
		return counter
	end

	def find_head
		self.empty_stack_in
		return head = @stack_out.peek
		self.empty_stack_out
	end

	def remove
		self.empty_stack_in
		@stack_out.pop
		@head = @stack_out.peek
		self.empty_stack_out
	end

  def empty_stack_in
    until @stack_in.is_empty?
      @stack_out.push(@stack_in.peek)
      @stack_in.pop
    end
  end

  def empty_stack_out
    until @stack_out.is_empty?
      @stack_in.push(@stack_out.peek)
      @stack_out.pop
    end
  end
end
