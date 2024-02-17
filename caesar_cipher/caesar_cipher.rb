def caesar_cipher(string, shift_factor)
  alphabet = ('a'..'z').to_a
  string_arr = string.split('').map do |letter|
    next letter if letter =~ /[^A-Za-z]/

    original_letter = letter
    letter = letter.downcase

    shifted_index = alphabet.find_index(letter) + shift_factor

    while shifted_index >= 26
      shifted_index -= 26
    end

    shifted_letter = alphabet[shifted_index]

    original_letter =~ /[A-Z]/ ? shifted_letter.upcase : shifted_letter
  end
  string_arr.join
end
