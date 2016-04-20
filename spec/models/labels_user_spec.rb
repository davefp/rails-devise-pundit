require 'rails_helper'

RSpec.describe LabelsUser, type: :model do

  it "should not allow the same label to be added to a user twice" do
    label = create(:label)
    user = create(:user)

    LabelsUser.create(label: label, user: user)

    expect(LabelsUser.new(label: label, user: user)).to be_invalid
  end
end
