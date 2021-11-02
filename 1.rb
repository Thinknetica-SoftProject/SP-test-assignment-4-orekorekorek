## Задача №1:
#
# Джон Макклейн пытается найти этаж на котором заложена бомба и у него есть список инструкций (в файле data/1.txt):
#
# (- Джон должен подняться на этаж выше
# ) - Джон должен опуститься на этаж ниже
#
# Поиск начинается с нулевого этажа. 
#
# На каком этаже находится бомба?
#
## Требования к решению:
# - Входные данные находятся в файле data/1.txt
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:
file_path = "data/1.txt"
f = File.new(file_path, "r:UTF-8")
current_floor = 0
instructions = f.read.split("")
instructions.each do |char|
    if char == "("
        current_floor += 1
    elsif char == ")"
        current_floor -= 1
    end
end
f.close
puts current_floor

