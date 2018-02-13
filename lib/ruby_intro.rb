# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each { |a| sum+=a }
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  arr.sort.last(2).each { |a| sum+=a }
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  hash = Hash.new(0)
  arr.each do |val|
    if hash.key? val
      return true
    else
      hash[n-val] = val
    end
  end
  
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /\A(?=[^aeiou])(?=[a-z])/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  if s =~ /^[10]*00$/ || s =="0"
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_reader :isbn, :price

  def isbn= (isbn)
    if isbn == ''
      raise ArgumentError.new("Must have an ISBN number")
    end
    @isbn = isbn
  end

  def price= (price)
    price = price.to_f
    if price <= 0
      raise ArgumentError.new("Must have price")
    end
    @price = price
  end

  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end