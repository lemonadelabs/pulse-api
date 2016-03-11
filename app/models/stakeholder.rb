class Stakeholder < ApplicationRecord
  has_many :stakeholder_snapshots
  has_many :projects, through: :stakeholder_snapshots

  has_many :connections
  has_many :acquaintance, through: :connections
end

module Api
  class Stakeholder < ApplicationRecord
    has_many :stakeholder_snapshots
    has_many :projects, through: :stakeholder_snapshots

    has_many :connections
    has_many :acquaintance, through: :connections
  end
end
