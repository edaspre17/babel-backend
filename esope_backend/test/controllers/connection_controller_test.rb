require 'test_helper'

class ConnectionControllerTest < ActionDispatch::IntegrationTest
  test "should get connect" do
    get connection_connect_url
    assert_response :success
  end

end
