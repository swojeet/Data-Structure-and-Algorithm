class Queue
  # your code here
  def initialize
    @array = Array.new
  end

  def enqueue(elem)
    @array.push(elem)
  end

  def dequeue
    #check if the array is empty before trying to remove the first element from the queue
    return nil if @array.empty?
    @array.shift
  end

  def peek
    #check if the array is empty before trying to peek the first element of the queue
    return nil if @array.empty?
    @array[0]
  end

  def empty?
    @array.length ==0 ? true : false
  end

  def size
    @array.length
  end
end
