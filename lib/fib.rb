def fibonacci(n)
  if n < 0
    fail(ArgumentError, "number can't be negative")
  elsif n == 0
    return 0
  elsif n == 1
    return 1
  else
    return (fibonacci(n - 1)) + (fibonacci(n - 2))
  end
end

