require 'rails_helper'

RSpec.describe ProjectList, :type => :model do
  describe "Project List model test" do
  subject {
    described_class.new(title: "Anything",
                        description: "Lorem ipsum",
                        user_id: 1)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  describe "Associations" do
    it { should belong_to(:user).without_validating_presence }
    it { should have_many(:project_tasks).dependent(:destroy) }
  end
end
  
end