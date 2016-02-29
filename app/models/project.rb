class Project < ApplicationRecord
  has_many :stakeholder_snapshots
  has_many :stakeholders, through: :stakeholder_snapshots
  has_many :connections
end
