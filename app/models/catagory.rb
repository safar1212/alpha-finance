class Catagory < ApplicationRecord

  validates :name, presence: true, length: { maximum: 250 }
  validates :icon_type

  mount_uploader :icon, IconUploader

  belongs_to :user
  has_many :items, dependent: :destroy

  

  private

  def icon_type
     if icon.attached? == false
       errors.add(:icon, "is missing!")
     end
     if !icon.content_type.in?(%('icon/jpeg icon/png icon/jpg'))
       errors.add(:icon, "needs to be a jpg, jpeg or png!")
     end
   end


end
