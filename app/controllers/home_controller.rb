class HomeController < ApplicationController

  def home
    @daily_workout = DailyWorkout.last
    @monthly_workout = MonthlyWorkout.last
  end

end
