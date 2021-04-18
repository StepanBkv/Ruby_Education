# 1 Задание
puts ("Hello world")
# 2 Задание
username = "Stepan"
#printf("Привет, %s!", username)
# 3 задание
printf("Какой твой любимый язык программирования, %s?\n", username)
lang = gets.chomp.strip
lang.capitalize!
if lang == "Ruby"
  puts "Подлиза)))))"
elsif lang == "Python"
  puts "Нормально, нормально. Но скоро будет Ruby"
elsif lang == "C++"
  puts "Жесть. Но скоро будет Ruby)"
elsif lang == "R"
  puts "Статист значит. Но скоро будет Ruby"
elsif lang == "JS"
  puts "Извращюга. Но Ruby лучше)"
elsif lang == "C#"
  puts "Скоро будет Ruby"
elsif lang == "PHP"
  puts "ъеъ. Skoro budet Руби"
end