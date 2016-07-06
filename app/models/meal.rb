class Meal < ApplicationRecord
  has_many :items, class_name: 'MealItem', inverse_of: :meal, dependent: :destroy
  accepts_nested_attributes_for :items, allow_destroy: true
end
