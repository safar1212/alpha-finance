class Item < ApplicationRecord
  validates :name, presence: true, format: { with: /[a-zA-Z]/ }
  validates :amount, numericality: { only_integer: true, greater_than_or_equal_to: 1 }

  belongs_to :user
  belongs_to :catagory
end
