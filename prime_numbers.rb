def prime?(number)
  if number <= 1
    return false
  elsif number == 2
    return true
  elsif number % 2 == 0
    return false
  else
    i = 3
    while i * i <= number
      if number % i == 0
        return false
      end
      i += 2
    end
    return true
  end
end

loop do
  print "Введіть число для перевірки на простоту (або 'exit' для виходу): "
  input = gets.chomp.downcase

  break if input == 'exit'

  number = input.to_i

  if prime?(number)
    puts "#{number} - просте число."
  else
    puts "#{number} - складене число."
  end
end
