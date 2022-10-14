# frozen_string_literal: true

def caesar_cipher(string, shift_int)
  shift_character_ord = shift_character_ord(string, shift_int)
  valid_alpha_int = valid_alpha_int(shift_character_ord)
  valid_alpha_int.map(&:chr).join('')
end

# returns an array containing shifted ordinal integer
def shift_character_ord(string, shift_int)
  split_string = string.split('')
  split_string.map(&:ord).map do |char|
    if char == 32
      char
    else
      char + shift_int
    end
  end
end

def valid_alpha_int(shifted_array)
  shifted_array.map do |int|
    if int > 90 && int < 97
      64 + (int - 90)
    elsif int > 122
      96 + (int - 122)
    else
      int
    end
  end
end
