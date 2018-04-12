class Service < ApplicationRecord
  validates :base_cost, presence: true, numericality: { only_integer: true }
                      
end
