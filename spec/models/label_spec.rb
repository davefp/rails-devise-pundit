describe Label do

  it "can create labels with the same name and different colours" do
    Label.create(name: "test", colour: '#000000')
    expect(Label.new(name: "test", colour: '#FFFFFF')).to be_valid
  end

  it "can create labels with the same colour and different names" do
    Label.create(name: "test", colour: '#000000')
    expect(Label.new(name: "untest", colour: '#000000')).to be_valid
  end

  it "cannot create labels with the same name and colour" do
    Label.create(name: "test", colour: '#000000')
    expect(Label.new(name: "test", colour: '#000000')).to be_invalid
  end

  it "must have a colour in hex form" do
    expect(build(:label, colour: '#00FF00')).to be_valid
    expect(build(:label, colour: '#QWERTY')).to be_invalid
    expect(build(:label, colour: '000000')).to be_invalid
    expect(build(:label, colour: '#1234567')).to be_invalid
    expect(build(:label, colour: nil)).to be_invalid
  end

end
