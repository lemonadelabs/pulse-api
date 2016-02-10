class StakeholderSnapshotSimpleSerializer < ActiveModel::Serializer
  p '*' * 30

  def power
    3
  end

  attributes :power

end
