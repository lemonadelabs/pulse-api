class StakeholderSnapshotResource < JSONAPI::Resource
  attributes :id, :project_id, :stakeholder_id, :week, :power, :support, :vital

  has_one :project
  has_one :stakeholder
  has_many :votes
end
