class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :client, :timeframe, :timeFormat, :totalStakeholders, :projectOverview

  # has_many :stakeholder_snapshots, serializer: TestSerializer
  has_many :stakeholder_snapshots

  # def link
  #   { self: project_path(object.id) }
  #   { self: project_path(object.id) }
  # end
end
