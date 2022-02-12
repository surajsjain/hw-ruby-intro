# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  s = 0
  
  for num in arr do
    s = s + num
  end
  
  return s
end

def max_2_sum(arr)
  
  if arr.length() == 0
    return 0
    
  elsif arr.length() == 1
    return arr[0]
  end
  
  l1 = -1/0.0
  l2 =  -1/0.0
  
  for n in arr do

    if n > l1
      l2 = l1
      l1 = n
      
    elsif n > l2
      l2 = n
    end
  end
  
  return l1 + l2
  
end

def sum_to_n? arr, n
  seen = {}
  
  for num in arr do
    required = n - num
    
    if seen.key?(required)
      return true
    end
    
    seen[num] = true
  end
  
  return false
    
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.length() == 0
    return false
  end
  
  starting_chr = s[0].downcase
  
  if starting_chr.match?(/[[:alpha:]]/) == false
    return false
  elsif starting_chr != "a" and starting_chr != "e" and starting_chr != "i" and starting_chr != "o" and starting_chr != "u"
    return true
  else
    return false
  end
  
end

def binary_multiple_of_4? s
  if s.count("a-zA-Z") > 0 or s.length() == 0
    return false
  end
  
  int_rep = s.to_i(2)
  
  return int_rep % 4 == 0
end

# Part 3

class BookInStock

  def initialize(isbn, price)
    if isbn == ""
      raise ArgumentError.new("ISBN is wrong")
    else
      @isbn = isbn
    end
    
    if price <= 0
      raise ArgumentError.new("Price is wrong")
    else
      @price = price
    end
  end
  
  def price
    @price
  end
  
  def price=(new_val)
    if new_val <= 0
      raise ArgumentError.new("Price is wrong")
    else
      @price = new_val
    end
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(new_val)
    if new_val == ""
      raise ArgumentError.new("ISBN is wrong")
    else
      @isbn = new_val
    end
  end
  
  def price_as_string()
    string_price = @price.to_f.to_s
    
    if string_price.split('.')[1].length() < 2
      string_price += "0"
    end
    
    return "$" + string_price
  end
  
end
