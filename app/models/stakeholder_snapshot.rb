class StakeholderSnapshot < ApplicationRecord
  belongs_to :project
  belongs_to :stakeholder
  has_many :relationships
end
