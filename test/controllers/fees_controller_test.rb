require 'test_helper'

class FeesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fees_index_url
    assert_response :success
  end

  test "should get edit" do
    get fees_edit_url
    assert_response :success
  end

end
