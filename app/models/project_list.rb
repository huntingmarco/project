class ProjectList < ApplicationRecord
    validates :title, presence:true
    validates :description, presence:true

    has_many :project_tasks
    belongs_to :user
end
