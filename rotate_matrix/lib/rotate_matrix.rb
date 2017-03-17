class Matrix
  attr_accessor :array1

  def initialize(elements)
    # your code here
    @array1= Array.new(elements)
  end

  def rotate
    # your code here
    # check if the matrix is a square matrix, if it isn't return false
    return false unless is_square?(@array1)

    row_count = 0

    #creating a new temporary array to hold the rotated elements
    temp_array = Array.new(@array1.size){ Array.new(@array1.size) }

    @array1.each do |i|
      colm_count = 0
      i.each do |j|
        temp_array[colm_count][@array1.size-1-row_count] = j
        colm_count += 1
      end
      row_count += 1
    end

    temp_array
  end

  def rotate_in_place
    # check if the matrix is a square matrix
    return false unless is_square?(@array1)
    # rotating the matrix is equivalent to the transpose of the matrix and then the reverse of each of the elements inside the arrays of the entire matrix
    @array1.transpose.map{ |inner_arrays| inner_arrays.reverse! }
  end

  def is_square?(arr)
    length = arr.size
    inner_length = 0

    # return false if any one of the arrays inside the matrix doesn't have the same number of elements as the matrix length
    arr.each do |inner_array|
      return false if inner_array.size != length
    end

    return true
  end
end
