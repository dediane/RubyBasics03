def isalpha?(char)
  (char >= 'a' && char <= 'z') || (char >= 'A' && char <= 'Z')
end

def isupper?(char)
  char >= 'A' && char <= 'Z'
end

def validkey?(num)
  (num.is_a? Integer) && (num.to_i <= 26) && num.to_i.positive?
end

def crypt(char, key, max)
  crypted = (char.ord + key)
  return crypted.chr unless crypted > max

  return (crypted -= 26).chr
end

def caesar_cipher(str, key)
  return 'Not a valid key' unless validkey?(key)
  str.chars.map.with_index do |char, i|
    if isalpha?(char) && isupper?(char)
      str[i] = crypt(char, key, 90)
    elsif isalpha?(char) && !isupper?(char)
      str[i] = crypt(char, key, 122)
    end
  end
  return str
end
