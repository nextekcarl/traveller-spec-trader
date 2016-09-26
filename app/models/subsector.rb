class Subsector < ApplicationRecord
  has_many :planets, dependent: :destroy

  after_create :import_uwp

  def import_uwp
    #TODO: Iterate over data in uwp and extract trade codes, building the planets
    uwp.split("\n").each do |line|
      next unless line.match(/^.+\s+\d{4}\s+\w\d{6}-\d\s+\w+\D+$/)
      name = line.match(/^(.+)\s+\d/)[1]
      self.planets.create!(name: name.strip, uwp: line.strip)
    end
  end
end
