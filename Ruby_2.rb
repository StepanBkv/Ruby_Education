def min_d list
  min = 2**16
  list.each do |num|
    if(num < min)
      min = num
    end
  end
  return min
end

def max_d list
  max = 0
  list.each do |num|
    if(num > max)
      max = num
    end
  end
  return max
end

def sum_d list
  sum = 0
  list.each do |num|
    sum += num
  end
  return sum
end

def mult_d list
  mult = 1
  list.each do |num|
    mult *= num
  end
  return mult
end

list = []
dsfdsf = lambda { |str, chv = ""| (str + "").each_char do |num| if(num != " ") then chv += num elsif (chv != "") then list += [chv.to_i]; chv = "" end end; list }
arr_char = gets.chomp
dsfdsf.call arr_char
puts min_d list
puts max_d list
puts sum_d list
puts mult_d list

# list.each do |num|
#   if(num != " ")
#     list += [num.to_i]
#   end
# end
