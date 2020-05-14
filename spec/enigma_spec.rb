require_relative '../lib/enigma'

RSpec.describe "Enigma" do

  it "exists when instantiated" do
    expect(Enigma).to respond_to(:new)
  end

  it "encrypts message" do
    e = Enigma.new
    e.encrypt("hello world", "02715", "040895")
  end
end