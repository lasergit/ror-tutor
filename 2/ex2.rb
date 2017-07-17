#!/usr/bin/env ruby

puts "#2 Monkey patching
Апгрейд стандартной библиотеки. Добавить метод массивам, который
будет возвращать все чётные числа, соответсвующие переданному в блок условию:
Чтобы это работало, делаем так:
class Array
  def even_search
     < your code is here >
  end
end
Пример:
[1, 2, 3, 4, 5, 6, 7].even_search { |i| i > 2 } # => [4, 6]
[1, 2, 3, 4, 5, 6, 7].even_search { |i| i > 10 } # => []
a = [2, 4, 6, 8, 10, 12, 7]
a.even_search { |i| i.between?(6, 12) } # => [6, 8, 10, 12]

"
# MonkeyPatchedArray
class Array
  def even_search(&block)
    (select(&block) if block_given?).reject(&:odd?)
  end
end

res = [1, 2, 3, 4, 5, 6, 7].even_search { |i| i > 2 }
p res
res = [1, 2, 3, 4, 5, 6, 7].even_search { |i| i > 10 }
p res
res = [2, 4, 6, 8, 10, 12, 7].even_search { |i| i.between?(6, 12) }
p res
