require_relative '../lib/caesar_cipher'


describe "The is_char_a_letter? method" do
    it "should return true if the char passed as param is a letter" do
        expect(is_char_a_letter?("a")).to eq(true)
        expect(is_char_a_letter?("C")).to eq(true)
        expect(is_char_a_letter?("Z")).to eq(true)

    end

    it "should return false if the char passed as param is a special charac or space or int" do
        expect(is_char_a_letter?("-")).to eq(false)
        expect(is_char_a_letter?(" ")).to eq(false)
        expect(is_char_a_letter?(6)).to eq(false)
    end
end


describe "The is_char_upcase? methode" do
    it "should return true if the char as parameter is an upcase letter" do
        expect(is_char_upcase?("A")).to eq(true)
        expect(is_char_upcase?("Z")).to eq(true)
    end
    
    it "should return false if the char as parameter is an upcase letter" do
        expect(is_char_upcase?("z")).to eq(false)
        expect(is_char_upcase?("a")).to eq(false)
    end
end



describe "The chiffrement_carac_upcase method" do
    it "should return the upcase letter cypted by the value of the key passed as parameter" do
        expect(chiffrement_carac_lowcase("A",2)).to eq("c")
        expect(chiffrement_carac_lowcase("Z",2)).to eq("a")
        expect(chiffrement_carac_lowcase("Y",2)).to eq("b")
    end
end



describe "The chiffrement_carac_lowcase method" do


    it "should return the lowcase letter cypted by the value of the key passed as parameter" do
        expect(chiffrement_carac_lowcase("a",2)).to eq("c")
        expect(chiffrement_carac_lowcase("z",2)).to eq("a")
        expect(chiffrement_carac_lowcase("y",2)).to eq("b")
        expect(chiffrement_carac_lowcase("Y",2)).to eq("B")
    end
end

describe "The caesar_cipher method" do
    it "should return the text passed as parameter, crypted by the key while respecting case" do
        expect(caesar_cipher("abC - ABd",1)).to eq("bcD - BCd")
        expect(caesar_cipher("zyX /",3)).to eq("cbA /")
        expect(caesar_cipher(64,8)).to eq(64)
    end
end











