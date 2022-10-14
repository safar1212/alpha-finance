class Catagory < ApplicationRecord
  
  mount_uploader :icon, IconUploader

  belongs_to :user
  has_many :items
end
