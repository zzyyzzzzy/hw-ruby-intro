# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each{|element| total += element}
  return total
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    max_1 = arr.min
    max_2 = arr.min
    for i in arr
      if i > max_1
        max_2 = max_1
        max_1 = i
      elsif i > max_2
        max_2 = i
      end
    end
    return max_1 + max_2
  end
end

def sum_to_n? arr, n
  n_arr = arr.sort
  start = 0
  last = arr.length - 1
  n_arr = arr.sort
  while start < last
    sum = n_arr[start] + n_arr[last]
    if sum == n
      return true
    elsif sum > n
      last -= 1
    else
      start += 1
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  is_letter = s[0] =~/[A-Za-z]/
  if s[0] == nil || !is_letter
    return false
  else
    fst = s[0].downcase
    comp = ["a", "e", "i", "o", "u"]
    res = comp.include? fst
    res = !res
    return res
  end
end

def binary_multiple_of_4? s
  begin
    a = Integer(s)
  rescue
    return false
  end
  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_reader :isbn, :price
  attr_writer :isbn, :price

  def initialize(isbn, price)
    if isbn[0] == nil || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    if @price >= 10
      if @price.to_s.length == 2
        return "$" + @price.to_s + ".00"
      elsif @price.to_s.length == 4
        return "$" + @price.to_s + "0"
      else
        return "$"+ @price.to_s
      end
    else
      if @price.to_s.length == 3
        return "$" + @price.to_s + "0"
      else
        return "$" + @price.to_s
      end
    end
  end 

end
