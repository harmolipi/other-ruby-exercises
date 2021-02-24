require 'pry'

def caesar_cipher(string="hello there", shift=0)
    # string_array = string.to_s.chars
    # new_string = string.to_s.each_char { |c| 
    #     puts c
    # }

    shift = shift%26
    codepoints_array = string.codepoints
    

    new_array = codepoints_array.map { |character| 
        
        if shift == 0
            shifted = character
            shifted
        elsif 65 <= character && character <= 90
            shifted = character + shift

            if shifted > 90
                
                character = (shifted - 90) + 64
            end


        elsif 97 <= character && character <= 122
            character += shift

        end
    }

    puts codepoints_array
    puts "------------"
    puts new_array
    new_string = String.new
    puts new_array.each { |letter| new_string.concat(letter) }
    puts new_string


end

caesar_cipher("Z", 52)