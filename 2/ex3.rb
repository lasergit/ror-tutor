#!/usr/bin/env ruby
puts '#3) Поиск в коллекциях
Реализовать метод range_finder который получая заданый диапазон возвращает
максимальное число у которого остаток деления на 7 равен 3.
При его отсутсвии такого числа возвращает nil.
Пример:
def range_finder(range)
  < your code is here >
end
 
range_finder((1..10)) # => 10
range_finder((50...105)) # => 101
range_finder((1..5)) # => 3

'

def range_finder(rng, n = 7, r = 3)
  subr = (rng.include?(rng.max - n) ? rng.last(n) : rng)
  val = subr.to_a.select { |i| i % n == r }
  val.empty? ? nil : val
end

puts range_finder((1..10))
puts range_finder((50..105))
puts range_finder((1..5))
puts range_finder((1..2)).nil?
