class Planet < ApplicationRecord
  #TODO: Should be imported from the Subsector creation automatically
  belongs_to :subsector, touch: true

  def trade_codes
    begin
      return self.uwp.match(/^.+\s+\d{4}\s+\w\d{6}-\d\s+\w+(\D+)$/)[1].strip.titleize
    rescue
      return ''
    end
  end
end
