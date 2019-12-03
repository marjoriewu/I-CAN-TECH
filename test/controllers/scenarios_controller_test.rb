require 'test_helper'

class ScenariosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scenarios_index_url
    assert_response :success
  end

  test "should get show" do
    get scenarios_show_url
    assert_response :success
  end

end
