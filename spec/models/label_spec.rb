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

end
