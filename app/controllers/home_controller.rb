class HomeController < ApplicationController

  def home
        @daily_workout = DailyWorkout.last if DailyWorkout.last
        @monthly_workout = MonthlyWorkout.last
  end

end
