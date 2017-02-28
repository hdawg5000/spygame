require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pages_new_url
    assert_response :success
  end

  test "should get join" do
    get pages_join_url
    assert_response :success
  end

  test "should get game" do
    get pages_game_url
    assert_response :success
  end

end
