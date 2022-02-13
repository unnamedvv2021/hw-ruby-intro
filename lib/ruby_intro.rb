# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  # return the sum of all the elements of the array
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  # sort the array, then return the sum of the first two elements
  if arr.size == 0
    return 0
  end
  if arr.size == 1
    return arr[0]
  end
  arr.sort_by!{|i| -i}
  res = arr[0..1]
  return arr[0] + arr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # use a hashmap to store the elements that are viewed, if any elements equals to (n - i), return true
  map = Hash.new
  for i in arr
    if map.include?(n - i)
      return true
    end
    map[i] = 1
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.size == 0
    return false;
  end
  vowel = "AEIOUaeiou"
  dic = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM"
  if vowel.include? s[0] or (!dic.include? s[0])
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if s =~ /^0+$/ or s =~ /^[01]+00$/
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if isbn.empty? or price <= 0 
      raise ArgumentError.new("wrong input")
    end
  end
  
  def isbn
    return @isbn
  end
  
  def price
    return @price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    return "$%.02f" % @price
  end
end
