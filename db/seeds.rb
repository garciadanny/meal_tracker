# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

3.times do |x|
  meal = Meal.find_or_create_by!(name: "Meal #{x + 1}")
  meal.items.find_or_create_by!(
    name: "Meal Item #{ x + 1 }",
    quantity: 5.3,
    quantity_type: "oz",
    calories: 100 + (x + 1),
    protein: 100 + (x + 1),
    fat: 100 + (x + 1),
    carbs: 100 + (x + 1),
    fiber: 100 + (x + 1)
  )
end
