class Subsector < ApplicationRecord
  has_many :planets, dependent: :destroy

  after_create :import_uwp

  def import_uwp
    #TODO: Iterate over data in uwp and extract trade codes, building the planets
    uwp.split("\n").each do |line|
      next unless line.match(/^(\w+)\s+(\d{4})\s+([ABCDEX]\w{6}-\d{1,2})\s+([NSTRCP]{0,5})\s+((?:\w\w{0,1}\s*){0,5})\s*$/m)
      name = line.match(/^(\w+)\s+(\d{4})\s+([ABCDEX]\w{6}-\d{1,2})\s+([NSTRCP]{0,5})\s+((?:\w\w{0,1}\s*){0,5})\s*$/m)[1]
      self.planets.create!(name: name.strip, uwp: line.strip)
    end
  end
end
