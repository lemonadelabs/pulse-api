class StakeholderResource < JSONAPI::Resource
  attributes :id, :name, :image, :organisation, :role, :tags, :notes

  has_many :stakeholder_snapshots
  has_many :projects
  has_many :connections
end
