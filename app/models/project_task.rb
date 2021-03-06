class ProjectTask < ApplicationRecord
  validates :content, presence:true
  validates :deadline, presence:true

  belongs_to :project_list, optional: true
  
  has_many_attached :file

  def done?
    !done_at.blank?
  end
end
