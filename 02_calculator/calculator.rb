def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(a)
  sum = 0
  a.each do |e|
    sum += e
  end
  sum
end

def multiply(a, b = 0)
  unless a.is_a?(Array) && b == 0
    a * b
  else
    a.reduce do |all, curr|
      all * curr
    end
  end
end

def power(a, b)
  a ** b
end

def factorial(n)
  factorial = 1
  for i in 1..n
    factorial *= i
  end
  factorial
end

# Done...
