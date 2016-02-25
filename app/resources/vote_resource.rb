class VoteResource < JSONAPI::Resource
  attributes :id, :power, :support, :vital

  has_one :stakeholder_snapshot
end
