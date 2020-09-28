require 'rails_helper'

RSpec.describe ProjectList, type: :model do
    context "validation test" do
        it "ensures title presence" do
            project_list = ProjectList.new(title: 'tittle').save
            expect(project_list).to eq(false)
        end
        it "ensures description presence" do
            project_list = ProjectList.new(description: 'tittle').save
            expect(project_list).to eq(false)
        end
    end
end
