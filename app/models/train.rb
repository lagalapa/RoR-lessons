class Train < ActiveRecord::Base
  belongs_to :route
  has_many :tickets
  has_many :carriages

  validates :number, presence: true

  def cars_by_cat(category)
    carriages.where(category: category)
  end

  def upper(category)
    cars_by_cat(category).to_a.inject(0){ |sum, car| sum + car.upper }
  end

  def lower(category)
    cars_by_cat(category).to_a.inject(0){ |sum, car| sum + car.lower }
  end
end
