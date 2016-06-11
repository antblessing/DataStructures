class QuickUnion

  def initialize(n)
    @id = Array.new(n) { |i| i }
  end

  def root(i)
    while i != @id[i]
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
    @id[i] = j
  end
end
