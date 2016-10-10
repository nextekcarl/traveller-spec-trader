class SupplierDeal < ApplicationRecord
  belongs_to :planet, optional: true
end
