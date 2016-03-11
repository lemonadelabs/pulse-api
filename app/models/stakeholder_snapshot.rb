class StakeholderSnapshot < ApplicationRecord
    belongs_to :project
    belongs_to :stakeholder
    has_many :votes
  end

module Api
  class StakeholderSnapshot < ApplicationRecord
    belongs_to :project
    belongs_to :stakeholder
    has_many :votes
  end
end
