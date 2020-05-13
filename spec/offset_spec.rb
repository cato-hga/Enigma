require './lib/offset'

RSpec.describe "Offset" do
  it "exists when instantianted" do
    off_set = Offset.new
    expect(Offset).to respond_to(:new)
  end
end