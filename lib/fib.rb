require 'timeout'

def fibonacci(n)
  n = n.floor
  fail(ArgumentError, "number can't be negative") if n < 0
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    return (fibonacci(n - 1)) + (fibonacci(n - 2))
  end
end

def fib_for_10_seconds
  1000.times do | i |
    puts "fibonacci number #{i}:"
    puts fibonacci(i)
  end
end

@running = true

while @running
  begin
    Timeout::timeout(10) { fib_for_10_seconds }
  rescue Timeout::Error
    @running = false
  end
end


