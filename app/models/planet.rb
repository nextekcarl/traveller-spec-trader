class Planet < ApplicationRecord
  #TODO: Should be imported from the Subsector creation automatically
  belongs_to :subsector, touch: true

  def trade_codes
    begin
      return self.uwp.match(/^(\w+)\s+(\d{4})\s+([ABCDEX]\w{6}-\d{1,2})\s+([NSTRCP]{0,5})\s+((?:\w\w{0,1}\s*){0,5})\s*$/m)[5].strip.titleize
    rescue
      return ''
    end
  end

  def base_code
    begin
      return self.uwp.match(/^(\w+)\s+(\d{4})\s+([ABCDEX]\w{6}-\d{1,2})\s+([NSTRCP]{0,5})\s+((?:\w\w{0,1}\s*){0,5})\s*$/m)[4].strip
    rescue
      return ''
    end
  end

  def start_port
    self.physical_stats[0] || ''
  end

  def hex
    begin
      return self.uwp.match(/^(\w+)\s+(\d{4})\s+([ABCDEX]\w{6}-\d{1,2})\s+([NSTRCP]{0,5})\s+((?:\w\w{0,1}\s*){0,5})\s*$/m)[2].strip
    rescue
      return ''
    end
  end

  def physical_stats
    begin
      return self.uwp.match(/^(\w+)\s+(\d{4})\s+([ABCDEX]\w{6}-\d{1,2})\s+([NSTRCP]{0,5})\s+((?:\w\w{0,1}\s*){0,5})\s*$/m)[3].strip
    rescue
      return ''
    end
  end
end
