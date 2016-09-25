class Recipe < ApplicationRecord
  validates :name, :cuisine_id, :kind, :ingredients, :steps, presence: true
  belongs_to :cuisine
end
