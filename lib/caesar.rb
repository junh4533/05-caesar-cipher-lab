def caesar_encode(string,offset)
lowercase = [*?a..?z] #makes an array of all the alphabets
uppercase = [*?A..?Z]
encrypted_string = ""
    
  string.each_char do |character|
  
    if character[/[a-zA-Z]/] == character #checks if the character is an alphabet
      if character == character.upcase #checks if the character is uppercased
        new_index = (uppercase.index(character) + offset) % 26
        character.sub!(/./, uppercase[new_index]) #replaces the character with the offset character 
      else
        new_index = (lowercase.index(character) + offset) % 26
        character.sub!(/./, lowercase[new_index]) #replaces the character with the offset character 
      end
    end
    encrypted_string << character #add encrypted alphabet into the encrypted string
    
  end

string = encrypted_string
  
end

puts caesar_encode("abc ABC 123 $(#*#@)",3)

def caesar_decode(string,offset)
lowercase = [*?a..?z] #makes an array of all the alphabets
uppercase = [*?A..?Z]
encrypted_string = ""
    
  string.each_char do |character|
  
    if character[/[a-zA-Z]/] == character #checks if the character is an alphabet
      if character == character.upcase #checks if the character is uppercased
        new_index = (uppercase.index(character) - offset) % 26
        character.sub!(/./, uppercase[new_index]) #replaces the character with the offset character 
      else
        new_index = (lowercase.index(character) - offset) % 26
        character.sub!(/./, lowercase[new_index]) #replaces the character with the offset character 
      end
    end
    encrypted_string << character #add encrypted alphabet into the encrypted string
    
  end

string = encrypted_string
  
end

puts caesar_decode("def DEF 123 %*(#$(",3)

