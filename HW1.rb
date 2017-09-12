def sum(arr=[])
  return arr.inject(0, :+)
end

def max_2_sum(arr=[])
  return arr.max(2).reduce(0, :+)
end

def sum_to_n?(arr=[], n)
  arr.combination(2).any? {|a, b| a + b == n}
end

def binary_multiple_of_4(string)
  if string !~ /[^01]/ && !string.empty? && string.to_i(2) % 4 == 0
      return true
  else
    return false
  end
end

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant(string)
  if string.empty?
    return false
  elsif string =~ /\A[^aeiou]/
    return true
  end
end

class BookInStock

  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError, 'ISBN or price incorrect'
    end
    @isbn = isbn
    @price = price
  end
  def price_as_string
    @price = "%.2f" % price
    "$#{price}"
  end
end