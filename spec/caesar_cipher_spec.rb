require_relative '../lib/caesar_cipher.rb'

describe "isalpha? method" do
  it "should return TRUE if a char is an alpha caractere" do
    expect(isalpha?('a')).to eq(true)
    expect(isalpha?('3')).to eq(false)
    expect(isalpha?('&')).to eq(false)
  end
end

describe "isupper? method" do
  it "shoudl return TRUE if char is an upper caractere." do
    expect(isupper?('A')).to eq(true)
    expect(isupper?('M')).to eq(true)
    expect(isupper?('m')).to eq(false)
    expect(isupper?('z')).to eq(false)
  end
end

describe "validkey? method" do
  it "Check if cipher key is valid" do
    expect(validkey?(13)).to eq(true)
    expect(validkey?(3)).to eq(true)
    expect(validkey?(27)).to eq(false)
    expect(validkey?(43)).to eq(false)
    expect(validkey?('ab')).to eq(false)
    expect(validkey?(-2)).to eq(false)
  end
end

describe "crypt method" do
  it "code a caratere" do
    expect(crypt('a', 2, 122)).to eq('c')
    expect(crypt('b', 8, 122)).to eq('j')
  end
end

describe "caesar_cipher method" do
  it "Uncode a text by n caracteres in Ascii" do
    expect(caesar_cipher("hello", -2)).to eq("Not a valid key")
    expect(caesar_cipher("name", 2)).to eq("pcog")
    expect(caesar_cipher("Hello World", 5)).to eq("Mjqqt Btwqi")
    expect(caesar_cipher("Aaaab", 2)).to eq("Ccccd")
    expect(caesar_cipher("My name", 3)).to eq("Pb qdph")
    expect(caesar_cipher("My name", 2)).to eq("Oa pcog")
  end
end