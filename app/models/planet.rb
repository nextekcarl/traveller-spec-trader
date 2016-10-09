class Planet < ApplicationRecord
  REGEX = Regexp.new(/\A\s*(\w+)\s+(\d{4})\s+([ABCDEX]\w{6}-\w{1,2})\s*([NSTRCP]{0,5})\s*((?:\w{2}\s*){0,5})\s*([GAR])?\s*\z/)
  belongs_to :subsector, touch: true

  validates_format_of :uwp, with: REGEX

  before_save :set_hex

  def trade_codes
    begin
      return self.uwp.match(REGEX)[5].strip.titleize
    rescue
      return ''
    end
  end

  def travel_code
    begin
      return self.uwp.match(REGEX)[6].strip.titleize
    rescue
      return 'G'
    end
  end

  def base_code
    begin
      return self.uwp.match(REGEX)[4].strip
    rescue
      return ''
    end
  end

  def star_port
    self.physical_stats[0] || ''
  end

  def refigure_hex
    begin
      return self.uwp.match(REGEX)[2].strip
    rescue
      return ''
    end
  end

  def physical_stats
    begin
      return self.uwp.match(REGEX)[3].strip
    rescue
      return ''
    end
  end

  def tech
    begin
      return physical_stats[8..9]
    rescue
      return ''
    end
  end

  def law
    begin
      return physical_stats[6]
    rescue
      return ''
    end
  end

  def government
    begin
      return physical_stats[5]
    rescue
      return ''
    end
  end

  def population
    begin
      return physical_stats[4]
    rescue
      return ''
    end
  end

  def hydro
    begin
      return physical_stats[3]
    rescue
      return ''
    end
  end

  def atmosphere
    begin
      return physical_stats[2]
    rescue
      return ''
    end
  end

  def size
    begin
      return physical_stats[1]
    rescue
      return ''
    end
  end

  private

  def set_hex
    self.hex = self.refigure_hex if self.hex.blank?
  end
end
