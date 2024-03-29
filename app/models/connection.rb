class Connection < ApplicationRecord
  belongs_to :project
  belongs_to :stakeholder
  belongs_to :acquaintance, class_name: "Stakeholder"
end

module Api
  class Connection < ApplicationRecord
    belongs_to :project
    belongs_to :stakeholder
    belongs_to :acquaintance, class_name: "Stakeholder"
  end
end
