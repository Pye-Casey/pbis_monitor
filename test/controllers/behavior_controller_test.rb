require 'test_helper'

class BehaviorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get behavior_index_url
    assert_response :success
  end

end
