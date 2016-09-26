class Recipe < ApplicationRecord
  validates :name, :cuisine_id, :dish_id, :ingredients, :steps, presence: true
  belongs_to :cuisine
  belongs_to :dish
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
