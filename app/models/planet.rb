class Planet < ApplicationRecord
  #TODO: Should be imported from the Subsector creation automatically
  belongs_to :subsector, touch: true
end
