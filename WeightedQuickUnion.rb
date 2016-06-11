class WQU
  def initialize(n)
    # Array representing each node, with their values as their index
    @id = Array.new(n) { |i| i }
    # Array to hold the size of each component
    @size = Array.new(n)

    n.times do |i|
      @size[i] = 1
    end
  end

  def root(i)
    while i != @id[i]
      id[i] = id[id[i]] # Implement path compression to set each value to the root
      i = @id[i]
    end
    return i
  end

  def find(a, b)
    return @id[a] == @id[b]
  end

  def union(a, b)
    i = root(a)
    j = root(b)
    if @size[a] < @size[b]
      @id[i] = j
      @size[j] += @size[i]
    else
      @id[j] = i
      @size[i] += @size[j]
    end
  end
end
