class Photo < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  # validate :correct_image_type
  # private 
  # def correct_image_type
  #   if image.attached? && !image.content_type.in?(%w(image/jpeg image/png))
  #     errors.add(:image, "Must be jpeg or png")
  #   elsif image.attached? == false
  #     errors.add(:image, "must have an image attached")
  #   end
  # end
end