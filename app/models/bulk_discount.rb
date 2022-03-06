class BulkDiscount < ApplicationRecord
  validates_presence_of :markdown,
                        :threshold
  belongs_to :merchant                          
end
