class Array

  def keep
    result = []
    self.each { |e| result << e if yield(e)}
    result
  end

  def discard
    keep {|e| !yield(e)}
  end
end