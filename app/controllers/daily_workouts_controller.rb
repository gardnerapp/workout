class DailyWorkoutsController < ApplicationController

  def new
    @daily_workout = DailyWorkout.new
    @daily_workout.workouts.build
  end

  def create
    @daily_workout = DailyWorkout.create(daily_workout_params)
    if @daily_workout.save
      flash[:success] = "A daily Workout Was Created !"
      redirect_to root_path
    end
  end

  private
  def daily_workout_params
    params.require(:daily_workout).permit(:focus, workouts_attributes: %i[lift sets reps])
  end

end


