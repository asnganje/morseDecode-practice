MORSE = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
}

def decode_char(char)
    puts MORSE[char].to_s.downcase
end

def decode_word(word)
    word.split(' ').each do |char|
    decode_char(char)
    end
end

def decode_sentence(sentence)
    sentence.split(' ').each do |word|
    decode_word(word)
    end
end
decode_sentence("-- -.--   -. .- -- .")