class HomeController < ApplicationController

  def home
    @daily_workout = DailyWorkout.last
    @monthly_workout = MonthlyWorkout.last
  end

  # TODO make sure monthly workout has something attached before rendeirng button and you can download it
  # push to remote

end
