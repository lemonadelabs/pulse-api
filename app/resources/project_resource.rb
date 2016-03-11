class ProjectResource < JSONAPI::Resource
  attributes :id, :title, :client, :timeframe, :time_format, :total_stakeholders, :description

  has_many :stakeholder_snapshots
  has_many :stakeholders
  has_many :connections

end

module Api
  class ProjectResource < JSONAPI::Resource
    attributes :id, :title, :client, :timeframe, :time_format, :total_stakeholders, :description

    has_many :stakeholder_snapshots
    has_many :stakeholders
    has_many :connections
  end
end
