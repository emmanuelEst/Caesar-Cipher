# frozen_string_literal: true

def caesar_cipher(string, shift_int)
  split_string = string.split('')
  # first returns a new array with the ordinal int of the char
  # then returns the sum of the given int and the ordinal int
  shifted_ord_ints = split_string.map(&:ord).map do |char|
    char + shift_int
  end
  checked_ints = shifted_ord_ints.map do |int|
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

# puts caesar_cipher('Aziz', 3)
