class Catagory < ApplicationRecord
  validates :name, presence: true, format: { with: /[a-zA-Z]/ }

  mount_uploader :icon, IconUploader

  belongs_to :user
  has_many :items, dependent: :destroy

  private

  def icon_type
    errors.add(:icon, 'is missing!') if icon.attached? == false
    errors.add(:icon, 'needs to be a jpg, jpeg or png!') unless icon.content_type.in?(%('icon/jpeg icon/png icon/jpg'))
  end
end
