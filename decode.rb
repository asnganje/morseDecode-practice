MORSE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(char)
  decoded = MORSE[char]
  if decoded
    decoded.downcase
  else
    "Not a morse code"
  end
end

def decode_word(word)
  n_word = word.split(" ")
  n_word.map do |char| decode_char(char) end.join
end

def decode_sentence(sentence)
  @sentns = sentence.split("   ")
  @sentns.map do |word| 
    decode_word(word) 
  end.join(" ")
end

puts decode_char(".-")
puts decode_word("-- -.--")
puts decode_sentence("-- -.--   -. .- -- .")