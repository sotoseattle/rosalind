months = 28
litter = 2

fib = {1 => 1, 2 => 1}

(1..months).each { |n| fib[n] ||= fib[n-1] + fib[n-2]*litter }

puts "total: #{fib[months]}"
