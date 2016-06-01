class Carriage < ActiveRecord::Base
  validates :upper, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :lower, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  belongs_to :train
end
