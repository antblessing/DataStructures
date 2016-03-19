class Node
  def initialize(data)
    @data = data
    @next_node = nil
  end

  def data
    @data
  end

  def data=(data)
    @data = data
  end

  def next_node
    @next_node
  end

  def next_node=(next_node)
    @next_node = next_node
  end
end
