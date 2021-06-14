class CreateMonthlyWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :monthly_workouts do |t|

      t.timestamps
    end
  end
end
