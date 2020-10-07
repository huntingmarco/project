require 'rails_helper'

RSpec.describe ProjectTask, :type => :model do

  describe "Project task model test" do
  subject {
    described_class.new(content: "Anything",
                        deadline: DateTime.now,
                        created_at: DateTime.now,
                        updated_at: DateTime.now)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a content" do
    subject.content = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a deadline" do
    subject.deadline = nil
    expect(subject).to_not be_valid
  end

end

end