class Recipe < ApplicationRecord
  validates :name, :cuisine_id, :kind, :ingredients, :steps, presence: true
  belongs_to :cuisine
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
