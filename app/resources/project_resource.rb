class ProjectResource < JSONAPI::Resource
  attributes :id, :name, :client, :timeframe, :timeFormat, :totalStakeholders, :projectOverview

  has_many :stakeholder_snapshots
end
