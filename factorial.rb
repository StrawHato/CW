def factorial(n)
  if n == 0
    return 1
  else
    return n * factorial(n - 1)
  end
end

loop do
  print "Введіть число для обчислення факторіала (або 'exit' для виходу): "
  input = gets.chomp

  break if input.downcase == 'exit'

  number = input.to_i

  if number < 0
    puts "Факторіал не визначений для від'ємних чисел."
  elsif number == 0
    puts "Факторіал 0 дорівнює 1."
  else
    result = factorial(number)
    puts "Факторіал #{number} дорівнює #{result}."
  end
end
