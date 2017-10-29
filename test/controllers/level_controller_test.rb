require 'test_helper'

class LevelControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get level_show_url
    assert_response :success
  end

  test "should get next" do
    get level_next_url
    assert_response :success
  end

end
