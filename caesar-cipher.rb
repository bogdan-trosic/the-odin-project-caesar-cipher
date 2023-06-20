def caesar_cipher(text, offset)
  split_arr = text.split("")
  cipher_arr = split_arr.map do |char|
    char_int = char.to_i(36)
    max_int = 35
    offset_base = 9
    
    if char == " " || char == "." || char == "," || char == "!" || char == "?" || char == "\'" || char == "\""
      char
    elsif char_int + offset > max_int
      if char.upcase == char
        (offset - (max_int - char_int) + offset_base).to_s(36).upcase
      else
        (offset - (max_int - char_int) + offset_base).to_s(36)
      end
    else
      if char.upcase == char
        (char_int + offset).to_s(36).upcase
      else
        (char_int + offset).to_s(36)
      end
    end
  end

  p cipher_arr.join
end

caesar_cipher("What a string!", 5)