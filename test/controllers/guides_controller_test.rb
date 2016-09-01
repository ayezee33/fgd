require 'test_helper'

class GuidesControllerTest < ActionController::TestCase
  test "should get guides" do
    get :guides
    assert_response :success
  end

end
