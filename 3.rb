## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:
file_path = "data/3.txt"
f = File.new(file_path, "r:UTF-8")
file = f.readlines
code = 0
for line in file do
    value = line.split
    min = value[0]
    max = min
for i in value do
    if (i > max)
        max = i
    end
    if (i < min)
        min = i
    end
end
code += (max.to_i - min.to_i)
end
f.close
puts code

