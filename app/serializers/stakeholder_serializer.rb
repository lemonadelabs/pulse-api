class StakeholderSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :organisation, :role, :tags, :notes

  has_many :stakeholder_snapshots
end
