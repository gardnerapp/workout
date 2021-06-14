class MonthlyWorkout < ApplicationRecord
  has_one_attached :monthly_plan
  # todo validate attachment presence
end
