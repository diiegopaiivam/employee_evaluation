require "test_helper"

class EvaluationEmployeeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get evaluation_employee_new_url
    assert_response :success
  end
end
