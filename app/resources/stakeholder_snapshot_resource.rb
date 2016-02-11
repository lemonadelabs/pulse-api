class StakeholderSnapshotResource < JSONAPI::Resource
  attributes :id, :week, :power, :support, :vital

  has_one :project
  has_one :stakeholder
end
