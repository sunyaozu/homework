# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  value = 0
  arr.each do |a|
    value += a
  end
  return value
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0 
    return 0
  end
  if arr.size == 1
    return arr[0]
  end
  m1 = 0
  m2 = 0
  if arr[0] > arr[1]
    m1 = arr[0]
    m2 = arr[1]
  else
    m1 = arr[1]
    m2 = arr[0]
  end
  for i in 2..(arr.size-1)
    if arr[i]>m1
      m2 = m1
      m1 = arr[i]
    elsif arr[i]>m2
      m2 = arr[i]
    end
  end
  return m1+m2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.size == 0 || arr.size == 1
    return false
  end
  for i in 0..(arr.size-2)
    for j in (i+1)..(arr.size-1)
      if arr[i]+arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, '+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[AEIOUaeiou]/ =~ s || s.empty? || /^[A-Za-z]/ !~ s
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /^[01]+$/ =~ s
    value = 0
    z = 1
    for i in 0..(s.length-1)
      value += z*(s[s.length-1-i].to_i)
      z *= 2
    end
    if value%4 == 0
      return true
    else
      return false
    end
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn1, price1)
    if isbn1.length == 0 || price1 <=0
      raise ArgumentError
    end
    @isbn = isbn1
    @price = price1
  end
  
  def isbn=(isbn1)
    if isbn1.length == 0
      raise ArgumentError
    end
    @isbn = isbn1
  end
  
  def price=(price1)
    if price1 <= 0
      raise ArgumentError
    end
    @price = price1
  end
  
  def price_as_string
    return "$"+format("%.2f",@price).to_s
  end
  
  attr_reader :isbn
  attr_reader :price
end
