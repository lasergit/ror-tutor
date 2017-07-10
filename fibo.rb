#!/usr/bin/env ruby

n = ARGV[0].to_i
f = [0, 1]

def fibo_next(f)
  f.push(f.last(2).inject(:+))
end

f = fibo_next(f) until f.size == n

puts f.join(' ')
