require 'rails_helper'

RSpec.describe Guide, type: :model do

  subject {
    described_class.new(guide_name: "Example Guide", address: "123 Example St", city: "Portland", state: "Oregon", phone_number: "1234567890")
  }

  it "is valid with valid attritubes" do
    expect(subject).to be_valid
  end

  it "is not valid without a guide_name" do
    subject.guide_name = ""
    expect(subject).to_not be_valid
  end

  it "is not valid without an address" do
    subject.address = ""
    expect(subject).to_not be_valid
  end

  it "is not valid without a city" do
    subject.city = ""
    expect(subject).to_not be_valid
  end

  it "is not valid without a state" do
    subject.state = ""
    expect(subject).to_not be_valid
  end

  it "is not valid without a phone_number" do
    subject.phone_number = ""
    expect(subject).to_not be_valid
  end

  it "should not have a guide_name longer than 50 chars"
  it "should not have an address longer than 50 chars"
  it "should not have a city longer than 17 chars"
  it "should not have a state shorter than 2 chars"
  it "should not have a state longer than 12 chars"
  it "should not have a phone_number shorter than 10 chars"
  it "should not have a phone_number longer than 16 chars"

end
