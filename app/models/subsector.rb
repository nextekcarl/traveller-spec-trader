class Subsector < ApplicationRecord
  has_many :planets, dependent: :destroy

  after_create :import_uwp

  def import_uwp
    #TODO: Iterate over data in uwp and extract trade codes, building the planets
  end
end
