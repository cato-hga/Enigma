require './lib/enigma'

RSpec.describe "Enigma" do

  it "exists when instantiated" do
    expect(Enigma).to respond_to(:new)
  end
  
end