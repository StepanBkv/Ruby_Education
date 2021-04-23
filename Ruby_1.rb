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
number = gets.chomp
sum = 0
number.to_s.each_char do |num|
  sum += num.to_i
end
print sum