# 1 Задание
puts ("Hello world")
# 2 Задание
username = "Stepan"
#printf("Привет, %s!", username)
# 3 задание
# printf("Какой твой любимый язык программирования, %s?\n", username)
# lang = gets.chomp.strip
# lang.capitalize!
# case lang
#   when "Ruby"
#   puts "Подлиза)))))"
#   when "Python"
#   puts "Нормально, нормально. Но скоро будет Ruby"
#   when "C++"
#   puts "Жесть. Но скоро будет Ruby)"
#   when "R"
#   puts "Статист значит. Но скоро будет Ruby"
#   when "JS"
#   puts "Извращюга. Но Ruby лучше)"
#   when "C#"
#   puts "Скоро будет Ruby"
#   when "PHP"
#   puts "ъеъ. Skoro budet Руби"
# else
#   puts "Такого языка нет("
# end
# 4 задание
# puts "Введите команду на Ruby!"
# intput = gets.chomp.strip
# eval intput
# puts "Введите командную строку своей ОС!"
# input = gets.chomp.strip
# system input
# 5 задание работа с числами
# number = gets.chomp
# sum = 0
# number.to_s.each_char do |num|
#   sum += num.to_i
# end
# print sum
# sum_char = lambda { |number, sum = 0| number.to_s.each_char do |num| sum += num.to_i end
# sum }
# number = gets.chomp
# puts sum_char.call(number)
# 6 задание

def sum_char str
  sum = 0
  str.to_s.each_char do |num|
    sum += num.to_i
  end
  sum
end

def multiplex_char str
  sum = 1
  str.to_s.each_char do |num|
    sum *= num.to_i
  end
  sum
end

def max_char str
  max = 0
  str.to_s.each_char do |num|
    if max < num.to_i
      max = num.to_i
    end
  end
  max
end

def min_char str
  min = 10
  str.to_s.each_char do |num|
    if min < num.to_i
      min = num.to_i
    end
  end
  min
end

def just str, num = 2
  if str < 2
    return false
  elsif str == 2
    return true
  elsif str % num == 0
    return false
  elsif num < str / 2
    just(str, num + 1)
  else
    return true
  end
end

def just_number str, num = 2, value = 0
  if str / 2 >= num
    if str % num == 0 && just(num)
      just_number(str, num + 1, value + 1)
    else
      just_number(str, num + 1, value)
    end
  else
    return value
  end
end

str = gets.chomp
puts just_number(str.to_i)