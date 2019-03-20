class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0}
  validate :carry_men_or_women_apparel

  def carry_men_or_women_apparel
    if (!mens_apparel && !womens_apparel)
      errors.add(:mens_apparel, "At least one of men or women's apparel should be set")
      errors.add(:womens_apparel, "At least one of men or women's apparel should be set")
    end
  end
end
