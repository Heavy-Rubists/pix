class Photo < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  validates :image, presence: true, content_type: %i[png jpg jpeg gif apng tiff tif bmp xcf webp]

  # private

  # def correct_image_type
  #   if image.attached? && !image.source_blob.content_type.strip.in?(%w[image/jpeg image/jpg image/png image/gif image/apng image/tiff
  #                                                                      image/tif image/bmp image/xcf image/webp])
  #     errors.add(:image, 'Must be jpeg or png')
  #   elsif image.attached? == false
  #     errors.add(:image, 'must have an image attached')
  #   end
  # end
end
