class Recipe < ApplicationRecord
  validates :name, :cuisine, :kind, :ingredients, :steps, presence: true
end
