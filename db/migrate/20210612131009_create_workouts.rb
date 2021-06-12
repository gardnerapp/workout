class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :lift
      t.integer :sets
      t.integer :reps
      t.references :daily_workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
