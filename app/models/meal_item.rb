class MealItem < ApplicationRecord
  belongs_to :meal, inverse_of: :items
  validates_presence_of :meal
end
