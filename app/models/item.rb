class Item < ApplicationRecord


  validates :name, presence: true, length: { maximum: 250 }
  validates :amount, numericality: { only_integer: true, greater_than_or_equal_to: 1 }

  belongs_to :user
  belongs_to :catagory
end
