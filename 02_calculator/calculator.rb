def add(num1, num2)
  num1 + num2
end

def subtract (num1, num2)
  num1 - num2
end

def sum(numbers = [])
  if numbers.empty? then return 0 end
  numbers.inject(:+)
end
