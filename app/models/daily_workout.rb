# == Schema Information
#
# Table name: daily_workouts
#
#  id         :integer          not null, primary key
#  focus      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class DailyWorkout < ApplicationRecord
  has_many :workouts
  accepts_nested_attributes_for :workouts
end
