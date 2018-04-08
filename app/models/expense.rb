class Expense < ActiveRecord::Base
  scope :concept, -> (concept) { where("concept LIKE ?", "%#{concept}%") }
  scope :category, -> (category) { where(category_id: category) }

  belongs_to :category
end
