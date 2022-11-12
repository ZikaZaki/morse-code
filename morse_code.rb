# Decode_char() method takes a string parameter,
# and return the corresponding character in uppercase
# (e.g. decode_char(".-") returns "A").
def decode_char(str)
  morse_characters = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }
  morse_characters[str]
end

# Test cases: It should return ("A").
puts decode_char('.-')

# Decode_word() method is to decode an entire word in Morse code.
# It takes a string parameter, and return the string representation.
# Every character in a word will be separated by a single space
# (e.g. decode_word("-- -.--") returns "MY").
def decode_word(str)
  word = ''
  str.split.each { |i| word += decode_char(i) }
  word
end

# Test cases: It should return ("MY").
puts decode_word('-- -.--')
