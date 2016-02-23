class Relationship < ApplicationRecord
  belongs_to :stakeholder_snapshot
  belongs_to :stakeholder # this is the person the subject is related to
end
