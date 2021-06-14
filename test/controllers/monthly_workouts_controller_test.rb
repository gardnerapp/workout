require "test_helper"

class MonthlyWorkoutsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get monthly_workouts_new_url
    assert_response :success
  end
end
