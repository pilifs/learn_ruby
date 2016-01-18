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

def multiply(*num)
  num.inject(:*)
end

def factorial(num)
  if num == 0 then return 1 end
  num_array = (1..num).to_a
  num_array.inject(:*)
  # recursion method:
  # return 1 if num == 0
  # num * factorial(num - 1)
end
