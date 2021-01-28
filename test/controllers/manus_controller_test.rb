require "test_helper"

class ManusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manus_index_url
    assert_response :success
  end
end
