MORSE_ALPHABET = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
  '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
  '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3',
  '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8',
  '----.' => '9', '-----' => '0'
}.freeze

def decode_char(morse_char)
  MORSE_ALPHABET[morse_char]
end

def decode_word(morse_word)
  morse_word.split.map { |char| decode_char(char) }.join
end

def decode(morse)
  words = morse.split('   ').map { |word| decode_word(word) }
  words.join(' ')
end

p decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
