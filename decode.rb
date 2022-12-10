MORSE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(char)
  @theLetter = MORSE[char].downcase
  @theLetter
end

def decode_word(word)
    @letters = word.split
    @ourLetters = ''
  @letters.each do |char|
    decode_char(char)
    @ourLetters += decode_char(char)
  end
  puts @ourLetters
end

def decode_sentence(sentence)
  sentence.split.each do |word|
    decode_word(word)
  end
end
decode_char('--..')
decode_word('--.. ..')