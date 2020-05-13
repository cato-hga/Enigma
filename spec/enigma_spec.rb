require './lib/enigma'

RSpec.describe "Enigma" do

  it "exists when instantiated" do
    expect(Enigma).to respond_to(:new)
  end

  it "encrypts a message with a key and date" do
    enigma = Enigma.new
    encrypt_message = enigma.encrypt("hello world", "02715", "040895")

    expect(encrypt_message).to eql( encryption: "keder ohulw", key: "02715", date: "040895")
  end
end