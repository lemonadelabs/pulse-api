class ConnectionResource < JSONAPI::Resource
  attributes :id, :week, :strength

  has_one :stakeholder
  has_one :acquaintance
end

module Api
  class ConnectionResource < JSONAPI::Resource
    attributes :id, :week, :strength

    has_one :stakeholder
    has_one :acquaintance
  end
end