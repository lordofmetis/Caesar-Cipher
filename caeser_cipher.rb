def caeser_cipher(string, number)
  string.each_char do |character|
    new_character =
      if character.ord.between?(65, 90)  # Uppercase letters
        shift_char(character, 65, number)
      elsif character.ord.between?(97, 122)  # Lowercase letters
        shift_char(character, 97, number)
      else
        character
      end

    print new_character
  end
  puts
end

def shift_char(char, base, number)
  ((char.ord - base + number) % 26 + base).chr
end

caeser_cipher('What a string!', 5)
