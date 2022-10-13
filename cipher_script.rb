# frozen_string_literal: true

def caesar_cipher(string, shift_int)
  shift_character_ord = shift_character_ord(string, shift_int)
  checked_ints = shift_character_ord.map do |int|
    if int > 90 && int < 97
      int_diff = int - 90
      64 + int_diff
    elsif int > 122
      int_diff = int - 122
      96 + int_diff
    else
      int
    end
  end
  checked_ints.map(&:chr).join('')
end

# returns an array containing shifted ordinal integer
def shift_character_ord(string, shift_int)
  split_string = string.split('')
  split_string.map(&:ord).map do |char|
    char + shift_int
  end
end
# puts caesar_cipher('Aziz', 3)
