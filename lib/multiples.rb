def multiple_of_3_or_5?(num)
  return true if (num % 3).zero?
  return true if (num % 5).zero?
  
  return false
end

def sum_of_3_or_5_multiples(num)
  return 'Je ne prends que les entiers naturels.' unless (num.is_a? Integer) && !num.negative?

  result = 0
  for n in 0...num
    if multiple_of_3_or_5?(n)
      result = n + result
    end
  end
  return result
end

def perform 
  puts "La somme des entiers naturels strictement inférieurs à 1000 et qui
   sont multiples de 3 ou 5 est #{sum_of_3_or_5_multiples(1000)}"
end

perform
