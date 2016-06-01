class Train < ActiveRecord::Base
  belongs_to :route
  has_many :tickets
  has_many :carriages

  validates :number, presence: true

  def cars_by_cat(category)
    carriages.where(category: category)
  end

  def upper(category)
    carriages.where(category: category).to_a.inject(0){ |sum, c| sum + c.upper }
  end

  def lower(category)
    carriages.where(category: category).to_a.inject(0){ |sum, c| sum + c.lower }
  end
end
