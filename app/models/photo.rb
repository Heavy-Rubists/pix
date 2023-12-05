class Photo < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  # validates :user_id, presence: true, format: { with: / \.(jpg|jpeg|png|gif|apng|tiff|tif|bmp|xcf|webp")$ /i, message: "custom message" }
end
