require 'bigdecimal'
#определяем два новых класса исключений
class OvenOffError < StandardError
end

class OvenEmptyError < StandardError
end

class SmallOven

  attr_accessor :contents

  def turn_on
    puts "Turning oven on."
    @state = "on"
  end

  def turn_off
    puts "Turning oven off."
    @state = "off"
  end

  def bake
    unless @state == "on"
      # инициируем исключение одного типа, если духовка выключена...
      raise OvenOffError, "You need to turn the oven on first!"
    end
    if @contents == nil
      # ...и исключение другого типа, если духовка пуста.
      raise OvenEmptyError, "There's nothing in the oven!"
    end
    "golden-brown #{contents}"
  end
end

dinner = ['turkey', nil, 'pie']
oven = SmallOven.new
oven.turn_off
dinner.each do |item|
  begin
    oven.contents = item
    puts "Serving #{oven.bake}."
    # Перехватываем только исключение OvenEmptyError.
  rescue OvenEmptyError => error
    # Выводим сообщение из исключения как и в предыдущей версии кода.
    puts error.message
    # Перехватываем только исключение OvenOffErrors.
  rescue OvenOffError => error
    # Раз духовка выключена мы вкючаем её.
    oven.turn_on
    # После включение духовки мы возвращаем управление к началу блока "begin"
    retry
  ensure
    oven.turn_off
  end
end

# class Person
#   # def name
#   #   @name
#   # end
#   #
#   # def name=(str)
#   #   @name = str
#   # end
#   attr_accessor :name
#   def greeting
#     "Hello #{@name}"
#   end
# end
#
# person = Person.new
# puts person.name = 'Dennis'