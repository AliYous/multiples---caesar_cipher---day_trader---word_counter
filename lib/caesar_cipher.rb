#Chiffre le mot passé en paramètre selon la key passée en paramètre
def caesar_cipher(mot_a_chiffrer, key)

end     

#vérifie si un charac passé en paramètre est une lettre ou pas
def is_char_a_letter?(ch)
    boolean = false
    boolean = true if (65..90) === ch.ord  or (97..122) === ch.ord
    return boolean
end

#Verifie sur le charac passé en paramètre est une lettre majuscule
def is_char_upcase?(ch)
    boolean = false
    boolean = true if (65..90) === ch.ord 
    return boolean
end

#chiffre la lettre capitales passées en paramètre
def chiffrement_carac_upcase(ch, key)
    

end


#Chiffre la lettre non capitales passées en paramètre
def chiffrement_carac_lowcase(ch, key)

end

puts is_char_a_letter?("Z")