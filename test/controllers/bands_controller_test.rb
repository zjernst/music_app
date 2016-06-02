require 'test_helper'

class BandsControllerTest < ActionController::TestCase
  test "should get albums" do
    get :albums
    assert_response :success
  end

  test "should get tracks" do
    get :tracks
    assert_response :success
  end

end
