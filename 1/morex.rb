#!/usr/bin/env ruby
puts ' #1: Создать переменную для строки "dniMyMdegnahCybuR".
Написать однострочную инструкцию, которая поменяет
порядок букв на противоположный, снизит все буквы в регистре
кроме первой. Вывести результат.
Значение оригинальной переменной должно быть изменено.'
puts 'dniMyMdegnahCybuR'.reverse.capitalize!

puts '#2: Дано семизначное число. Вывести на экран число,
где первая цифра стала последней, вторая ‐ предпоследней и т.д.'
puts 1_234_567.to_s.reverse

puts '#3: Дано целое число. Найти и вывести сумму его цифр.'
puts 1_234_567.to_s.split(//).map(&:to_i).inject(:+)

puts '#4: Дана строка. Необходимо подсчитать количество букв "а" в этой строке
(независимо от регистра)'
puts '111AaAAabaa'.downcase.split(//).count('a')

puts '#5: Дана строка. Проверить, является ли она палиндромом
(https://ru.wikipedia.org/wiki/%D0%9F%D0%B0%D0%BB%D0%B8%D0%BD%D0%B4%D1%80%D0%BE%D0%BC)'
def palindrom(s)
  norm = s.downcase.delete(' ')
  norm == norm.reverse
end
puts palindrom('Argentina manit negra')
puts palindrom('sr tt')

puts '#6: Вывести на экран числа от 10 до 3 не включая 5,
причём числа, кратные 3, вывести в квадрате.'
flt = proc { |i| (i % 3).zero? ? i**2 : i }
res = (3..10).to_a.reverse.reject { |i| i == 5 }.map(&flt)
puts res

puts '#7: Eсли ли в магазине какой‐либо продукт с ценой в 15?'
shop = {
     milk: 10,
     bread: 8,
     cornflakes: 12,
     ice_cream: 15,
     pie: 20
}
puts shop.keys[shop.values.index(15)]

puts '#8: дан массив ar = [1,6,1,8,2,-1,3,5].
Прибавить 100 к его максимальному элементу'
ar = [1, 6, 1, 8, 2, -1, 3, 5]
ar[ar.index(ar.max)] += 100
print ar

puts '#9: Дан массив: [7, 3, [4, 5, 1], 1, 9, [2, 8, 1]].
Вывести отсортированный по убыванию массив
из уникальных элементов начального массива:
puts ar
=> [9, 8, 7, 5, 4, 3, 2, 1]'
p [7, 3, [4, 5, 1], 1, 9, [2, 8, 1]].flatten.uniq!.sort.reverse
