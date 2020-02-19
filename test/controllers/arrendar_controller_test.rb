require 'test_helper'

class ArrendarControllerTest < ActionDispatch::IntegrationTest
  test "should get arrendo" do
    get arrendar_arrendo_url
    assert_response :success
  end

end
