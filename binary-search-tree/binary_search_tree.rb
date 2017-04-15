class Bst

  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
  end

  def insert(element)
    if element <= data
      if !self.left.nil?
        self.left.insert(element)
      else
        self.left = Bst.new(element)
      end
    else
      if !self.right.nil?
        self.right.insert(element)
      else
        self.right = Bst.new(element)
      end
    end
  end

  def each(&block)
    print(self, &block)
  end

  def print(node, &block)
    return unless node
    print(node.left, &block)
    block.call(node.data)
    print(node.right, &block)
  end

end