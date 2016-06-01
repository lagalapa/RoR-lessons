class Carriage < ActiveRecord::Base
  belongs_to :train

  validates :upper, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :lower, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :category, presence: true, inclusion: %w(C P)
end
