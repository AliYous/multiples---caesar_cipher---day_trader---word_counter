def is_multiple_of_3_or_5?(n)
    boolean = false
    boolean = true if (n%5 == 0 or n%3 == 0)
    return boolean
end

def sum_of_3_or_5_multiples(final_number)

    #checks if number is entienr naturel
    return "Saisis plutôt un entier naturel" if final_number.to_i < 0 or final_number.class != Integer
    #Fills in an array with only the numbers that match the condition
    array_of_3_5_multiples = Array.new
    for nb in (1..final_number-1) do
      if is_multiple_of_3_or_5?(nb) == true
        array_of_3_5_multiples << nb
      end
    end

    #Adds every numbers in the 3_5 multiples array
    return array_of_3_5_multiples.sum 
end
