class HandicapsToChild < ApplicationRecord
  belongs_to :child
  belongs_to :handicap
end
