# def min_d list
#   return list.min
# end
#
# def max_d list
#   return list.max
# end
#
# def sum_d list
#   return list.sum
# end
#
# def mult_d list
#   return list.reduce(1){|mult, num| mult *= num}
# end
#
# def read
#   print "Введите массив чисел: "
#   arr = gets.chomp().split()
#   return arr.map{|el| el.to_i}
# end
#
# list = read
#
# print list.to_s + "\n"
# puts min_d list
# puts max_d list
# puts sum_d list
# puts mult_d list
#1
print "Введите массив чисел: "
list = ARGV
#2
print "Введите массив чисел: "
arr = gets.chomp().split()
list = arr.map { |el| el.to_i }
#3
el = gets.chomp()
list += [el]
#4
list.push(el)
#5
list.unshift(el)
#6
list.concat([2, 4, 42, 5, 24])