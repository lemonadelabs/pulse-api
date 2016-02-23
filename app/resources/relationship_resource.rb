class RelationshipResource < JSONAPI::Resource
  attributes :id, :strength

  has_one :stakeholder
  has_one :stakeholder_snapshot
end
