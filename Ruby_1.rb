# 1 Задание
puts ("Hello world")
# 2 Задание
username = "Stepan"
#printf("Привет, %s!", username)
# 3 задание
printf("Какой твой любимый язык программирования, %s?\n", username)
lang = gets.chomp.strip
lang.capitalize!
case lang
  when "Ruby"
  puts "Подлиза)))))"
  when "Python"
  puts "Нормально, нормально. Но скоро будет Ruby"
  when "C++"
  puts "Жесть. Но скоро будет Ruby)"
  when "R"
  puts "Статист значит. Но скоро будет Ruby"
  when "JS"
  puts "Извращюга. Но Ruby лучше)"
  when "C#"
  puts "Скоро будет Ruby"
  when "PHP"
  puts "ъеъ. Skoro budet Руби"
else
  puts "Такого языка нет("
end
