# frozen_string_literal: true

def caesar_cipher(string, shift_int)
  split_string = string.split('')
  shift_character_ord = shift_character_ord(split_string, shift_int)
  valid_alpha_int = valid_alpha_int(shift_character_ord, split_string)
  valid_alpha_int.map(&:chr).join('')
end

# returns an array containing shifted ordinal integer
def shift_character_ord(split_string, shift_int)
  split_string.map(&:ord).map do |char|
    if char == 32
      char
    else
      char + shift_int
    end
  end
end

# checks if an ordinal integer overflows from each lower and upper case range
def valid_alpha_int(shifted_array, split_string)
  shifted_array.each_with_index.map do |int, index|
    if upper?(split_string, index) && int > 90
      64 + (int - 90)
    elsif lower?(split_string, index) && int > 122
      96 + (int - 122)
    else
      int
    end
  end
end

# method checks if the character was uppercase before changing to an ordinal integer
def upper?(split_string, index)
  regex = /[[:upper:]]/
  regex.match?(split_string[index])
end

# method checks if the character was lowercase before changing to an ordinal integer
def lower?(split_string, index)
  regex = /[[:lower:]]/
  regex.match?(split_string[index])
end
