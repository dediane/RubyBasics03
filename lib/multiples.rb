def is_multiple_of_3_or_5?(num)
  if num % 3 == 0
    return true
  elsif num % 5 == 0
    return true
  else 
    return false
  end
end

def sum_of_3_or_5_multiples(num)
  if num.is_a?Integer 
    if num >= 0
      result = 0
      for n in 0...num
        if is_multiple_of_3_or_5?(n)
          result = n + result
        end
      end
      return result
    else
      return "Je ne prends que les entiers naturels."
    end
  else
    return "Je ne prends que les entiers naturels."
  end
end

def perform 
  puts "La somme des entiers naturels strictement inférieurs à 1000 et qui sont multiples de 3 ou 5 est #{sum_of_3_or_5_multiples(1000)}"
end

perform