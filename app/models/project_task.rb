class ProjectTask < ApplicationRecord
  belongs_to :project_list

  def done?
    !done_at.blank?
  end
end
