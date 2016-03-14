class Vote < ApplicationRecord
  belongs_to :stakeholder_snapshot
end

module Api
  class Vote < ApplicationRecord
    belongs_to :stakeholder_snapshot
  end
end
