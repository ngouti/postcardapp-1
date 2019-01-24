require 'test_helper'

class StatesControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get states_name_url
    assert_response :success
  end

end
