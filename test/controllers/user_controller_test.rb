require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "gets our list of mentors" do

    user = User.create! first_name: "something"
    get "/user"
    assert_response :success
    assert_equal User.count, 1
    assert_equal [user].to_json, response.body
  end
end
