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

		until @stack_out.is_empty?
			@stack_in.push(@stack_out.peek)
			@stack_out.pop
		end
		return counter
	end

	def find_head
		until @stack_in.is_empty?
			@stack_out.push(@stack_in.peek)
			@stack_in.pop
		end
		return head = @stack_out.peek
		until @stack_out.is_empty?
			@stack_in.push(@stack_out.peek)
			@stack_out.pop
		end
	end

	def remove
		until @stack_in.is_empty?
			@stack_out.push(@stack_in.peek)
			@stack_in.pop
		end
		@stack_out.pop
		@head = @stack_out.peek
		until @stack_out.is_empty?
			@stack_in.push(@stack_out.peek)
			@stack_out.pop
		end
	end
end
