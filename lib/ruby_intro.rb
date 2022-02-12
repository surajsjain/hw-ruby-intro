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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
