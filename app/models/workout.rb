# == Schema Information
#
# Table name: workouts
#
#  id               :integer          not null, primary key
#  lift             :string
#  sets             :integer
#  reps             :integer
#  daily_workout_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Workout < ApplicationRecord
  belongs_to :daily_workout
end
