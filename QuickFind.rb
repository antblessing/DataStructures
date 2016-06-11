class QuickFind

	def initialize(n)
		@id = Array.new(n) { |i| i }
	end

	def is_connected?(a, b)
		return @id[a] == @id[b]
	end

	def union(a, b)
		a_id = @id[a]
		b_id = @id[b]

		@id.each do |x|
			if @id[x] == @id[a]
				@id[x] = @id[b]
			end
		end
	end
end
