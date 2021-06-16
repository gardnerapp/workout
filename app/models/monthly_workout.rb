class MonthlyWorkout < ApplicationRecord
  has_one_attached :monthly_plan

  # not returning the right boolean
  # upload an image of the monthly plan pdf is too much work
  def monthly_plan?
    monthly_plan.attached?
  end
end
