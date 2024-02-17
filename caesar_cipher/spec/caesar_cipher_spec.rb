require "./caesar_cipher/caesar_cipher"

describe "#caesar_cipher" do
  it "ciphers single word" do
    expect(caesar_cipher('flower', 5)).to eql('kqtbjw')
  end

  it "ciphers several words" do
    expect(caesar_cipher('air and water', 7)).to eql('hpy huk dhaly')
  end

  it "ciphers sentence with punctuation" do
    expect(caesar_cipher('In one hand he was holding what looked like a VERY LONG, THIN TRUMPET.', 10))
    .to eql('Sx yxo rkxn ro gkc ryvnsxq grkd vyyuon vsuo k FOBI VYXQ, DRSX DBEWZOD.')
  end

  it "wraps from z to a" do
    expect(caesar_cipher('banana', 50)).to eql('zylyly')
  end
end
