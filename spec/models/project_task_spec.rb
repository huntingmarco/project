require 'rails_helper'

RSpec.describe ProjectTask, type: :model do
    context "validation test" do
        it "ensures content presence" do
            project_task = ProjectTask.new(content: 'content').save
            expect(project_task).to eq(false)
        end
    end
end