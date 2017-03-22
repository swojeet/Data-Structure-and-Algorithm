class Stack
  # your code here
  def initialize
    @array = Array.new
  end

  def push(elem)
    @array.push(elem)
  end

  def pop
    @array.pop
  end

  def peek
    @array[@array.length-1]
  end

  def empty?
    @array.length == 0 ? true : false
  end

  def size
    @array.length
  end
end
