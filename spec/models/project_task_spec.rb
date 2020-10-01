require 'rails_helper'

RSpec.describe ProjectTask, :type => :model do

  subject {
    described_class.new(content: "Anything",
                        deadline: DateTime.now,
                        project_list_id: 1)
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

  it "is not valid without a project list id" do
    subject.project_list_id = nil
    expect(subject).to_not be_valid
  end

  describe "Associations" do
    it { should belong_to(:project_list) }
  end

end