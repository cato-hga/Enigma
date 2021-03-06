require_relative '../lib/offset'


RSpec.describe "Offset" do
  it "exists when instantianted" do
    off_set = Offset.new("22715", "1995-08-15")
    expect(Offset).to respond_to(:new)
  end

  it "forms key into 4 separate parts" do
    off_set = Offset.new("22715", "1995-08-15")
    off_set.format_key(off_set.key)

    expect([22,27,71,15]).to eql(off_set.format_key("22715"))
  end

  it "forms the date into 4 separate parts" do
    off_set = Offset.new("22715", "1995-08-15")
    off_set.format_offset_date("1995-08-15")

    expect([1,0,2,5]).to eql(off_set.format_offset_date("1995-08-15"))
  end

  it "combines together key and offset_date" do
    off_set = Offset.new("22715", "1995-08-15")
    off_set.format_key(off_set.key)
    off_set.format_offset_date("1995-08-15")
    off_set = off_set.combine

    expect(off_set).to eql([23,27,73,20])
  end
end