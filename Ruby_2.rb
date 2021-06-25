def min_d list
  return list.min
end

def max_d list
  return list.max
end

def sum_d list
  return list.sum
end

def mult_d list
  return list.reduce(1){|mult, num| mult *= num}
end

def read
  print "Введите массив чисел: "
  arr = gets.chomp().split()
  return arr.map{|el| el.to_i}
end

list = read

print list.to_s + "\n"
puts min_d list
puts max_d list
puts sum_d list
puts mult_d list