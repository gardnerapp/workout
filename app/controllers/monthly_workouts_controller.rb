class MonthlyWorkoutsController < ApplicationController

  def new
    @monthly_workout = MonthlyWorkout.new
  end

  def create
    @monthly_workout = MonthlyWorkout.new
    if @monthly_workout.save
      flash[:success] = "Monthly Workout Uploaded"
      redirect_to root_path
    else
      render :new
    end
  end
end
