class Stakeholder < ApplicationRecord
  has_many :stakeholder_snapshots
  has_many :projects, through: :stakeholder_snapshots
end
