require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  test "should get incomplete" do
    get :incomplete
    assert_response :success
  end

end
