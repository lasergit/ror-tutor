#!/usr/bin/env ruby

n = ARGV[0].to_i
exit if n <= 0
f = [0, 1]

def fibo_next(f)
  f.push(f.last(2).inject(:+))
end

case n
when 1
  f.pop
when 3..(1.0 / 0)
  f = fibo_next(f) until f.size == n
else
  f = [] unless n == 2
end

puts f.join(' ')
