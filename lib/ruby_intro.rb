# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0
  arr.each do |a|
  sum+=a
  end
  return sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  sum = 0
  if arr.length>1
  	arr.sort!.reverse!
  	sum = arr[0] + arr[1]
  elsif arr.length == 1
  	sum = arr[0]
  end
  return sum
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  if (n==0)
  	return false
  end
  (arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  if !s.start_with?("u", "e", "o", "a", "i", "U", "E", "O", "A", "I", "#", "!", "@", "$", "%", "^", "&", "*", "(", ")", ";", ",") && !s.empty?
  	return true
  else
  	return false
  end
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end
end
