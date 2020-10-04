class ProjectList < ApplicationRecord
    validates :title, presence:true 
    validates :description, presence:true

    has_many :project_tasks
    has_many :project_tasks, dependent: :destroy

    belongs_to :user
end
