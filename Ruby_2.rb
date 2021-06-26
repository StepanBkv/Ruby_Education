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
# print "Введите массив чисел: "
# list = ARGV
# #2
# print "Введите массив чисел: "
# arr = gets.chomp().split()
# list = arr.map { |el| el.to_i }
# list = [1, 4, 42, 2, 4, 24, 24, 2, 4]
# #3
# el = gets.chomp()
# list += [el]
# #4
# list.push(el)
# #5
# list.unshift(el)
# #6
# list.concat([2, 4, 42, 5, 24])
#7
# def file_read file_name
#   current_path = File.dirname(__FILE__)
#   if File.exists?(current_path + file_name)
#     file_list = File.new(current_path + file_name, 'r:UTF-8')
#     list = file_list.gets.chomp().split()
#     file_list.close
#     return list
#   else
#     puts("Файл не найден")
#   end
# end
#
# file_name = "ruby_2_list.txt"
# print list = file_read("/data/" + file_name)
# print "Введите массив чисел: "
# list = ARGV[0..-2]
# length = ARGV[-1]
# print "Длина: " + list.to_s + "\n"
# puts length

def read_to_file file_name
  current_path = File.dirname(__FILE__)
  if (file_name[0] != '/')
    file_name = '/' + file_name
  end
  if File.exists?(current_path + file_name)
    file_list = File.new(current_path + file_name, 'r:UTF-8')
    list = file_list.gets.chomp().split()
    file_list.close
    return list
  else
    puts("Файл не найден")
  end
end

#
# def read_i()
#   print "Введите массив чисел: "
#   arr = STDIN.gets.chomp().split()
#   return arr.map{|el| el.to_i}
# end
#
def read_f()
  print "Введите массив чисел: "
  arr = STDIN.gets.chomp().split()
  return arr.map { |el| el.to_f }
end

#
# puts "Выберете метод заполнения списка: 1. Интовые числа 2. Вещественные числа 3. Через файл"
# chosee = gets.chomp.to_i
# case chosee
# when 1
#   list = read_i
#   puts list
# when 2
#   list = read_f
#   puts list
# when 3
#   puts "Введите названия файла: "
#   file_name = gets.chomp
#   list = read_to_file(file_name)
#   print list
# end
# Дан целочисленный массив и интервал a..b. Необходимо найти
# количество элементов в этом интервале.
def range_d list
  if( list == nil)
    return 0
  else
    val = 0
    for i in list
      val += 1
    end
    return val
  end
end

def min_d list
  return list.min
end

def min_r list
  # min_2 = list.reverse.find_index(min)
  # min_2 = list.length - min_2 - 1
  # for i in list
  #   print i.i
  # end
  min = list.min
  min_1 = list.index(min)
  min_2 = list.rindex(min)
  return min_2 - min_1 - 1
end

# print min_r [1, 4, 5, 3, 543, 4, 4, 4, 1, 4, 4, 4]

# puts "Выберете метод заполнения списка: 1. Чтение из файл 2. Чтение с клавиатуры "
# case chosee = gets.chomp.to_i
# when 1
#   print "Введите название файла: "
#   file_name = gets.chomp
#   input = read_to_file file_name
#   input = input[0]
# when 2
#   print "Введите диапозон чисел: "
#   input = STDIN.gets.chomp
# end
#   range = input.split('..').map{|d| Integer(d)}
#   print range_d range[0]..range[1]

# Дан целочисленный массив.
# Необходимо найти количество элементов между первым и последним минимальным.

# Дан целочисленный массив и отрезок a..b. Необходимо найти
# количество элементов, значение которых принадлежит этому отрезку.
def in_list list, list_p
  new_list = []
  list_p.each do |j|
    new_list += [j]
  end
  (0..list.size).each do |i|
    if (list[i] == new_list[0])
      (0..new_list.size - 1).each do |j|
        if new_list[j] != list[i + j]
          return nil
        end
      end
      return list_p
    end
  end
  return nil
end

def sub_list
  list = [5, 54, 34, 3, 4, 5, 6, 7, 8, 9]
  list_p = [1, 2, 3, 4, 5, 6, 7]
  list_p_2 = list_p.clone
  max_l = []
  for i in list_p
    for j in list_p_2
      ret = in_list list, i..j
      if range_d(max_l) < range_d(ret)
        max_l = ret
      end
    end
    list_p_2.shift
  end
  return max_l
end

print sub_list











