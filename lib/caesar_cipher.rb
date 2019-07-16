#Chiffre le mot passé en paramètre selon la key passée en paramètre
def caesar_cipher(texte_a_chiffrer, key)
    array_letters_chiffrees = Array.new
    array_letters = texte_a_chiffrer.split('')
    array_letters.each do |letter|
        if is_char_a_letter?(letter) == true
            if is_char_upcase?(letter) == true
              array_letters_chiffrees << chiffrement_carac_upcase(letter,key)
            else
                array_letters_chiffrees << chiffrement_carac_lowcase(letter, key)
            end
        else
            array_letters_chiffrees << letter
        end
    end

        return array_letters_chiffrees.join
end     

#vérifie si un charac passé en paramètre est une lettre ou pas
def is_char_a_letter?(lettre_a_chiffrer)
    boolean = false
    boolean = true if (65..90) === lettre_a_chiffrer.ord  or (97..122) === lettre_a_chiffrer.ord
    return boolean
end

#Verifie sur le charac passé en paramètre est une lettre majuscule
def is_char_upcase?(lettre_a_chiffrer)
    boolean = false
    boolean = true if (65..90) === lettre_a_chiffrer.ord 
    return boolean
end

#chiffre la lettre capitales passées en paramètre
def chiffrement_carac_upcase(lettre_a_chiffrer, key)
    lettre_chiffree = ""
    if (lettre_a_chiffrer.ord + key) <= 90
      lettre_chiffree = lettre_a_chiffrer.ord + key
    elsif (lettre_a_chiffrer.ord + key) > 90
        lettre_chiffree = lettre_a_chiffrer.ord + key - 26 
    end
    return lettre_chiffree.chr
end


#Chiffre la lettre non capitales passées en paramètre
def chiffrement_carac_lowcase(lettre_a_chiffrer, key)
    lettre_chiffree = ""
    if (lettre_a_chiffrer.ord + key) <= 122
      lettre_chiffree = lettre_a_chiffrer.ord + key
    elsif (lettre_a_chiffrer.ord + key) > 122
        lettre_chiffree = lettre_a_chiffrer.ord + key - 26 
    end
    return lettre_chiffree.chr
end

puts caesar_cipher("AbcZ // a", 2)