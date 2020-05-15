require_relative '../lib/enigma'

RSpec.describe "Enigma" do

  it "exists when instantiated" do
    expect(Enigma).to respond_to(:new)
  end

  it "encrypts message" do
    e = Enigma.new
    e = e.encrypt("hello world", "02715", "1995-08-04")
    expect(e).to eql({encryption: "keder ohulw", key: "02715", date: "040895"})
  end
end