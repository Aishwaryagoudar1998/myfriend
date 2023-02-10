require "test_helper"

class MyFriendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_friend = my_friends(:one)
  end

  test "should get index" do
    get my_friends_url
    assert_response :success
  end

  test "should get new" do
    get new_my_friend_url
    assert_response :success
  end

  test "should create my_friend" do
    assert_difference("MyFriend.count") do
      post my_friends_url, params: { my_friend: { email: @my_friend.email, first_name: @my_friend.first_name, last_name: @my_friend.last_name, phone: @my_friend.phone, twitter: @my_friend.twitter } }
    end

    assert_redirected_to my_friend_url(MyFriend.last)
  end

  test "should show my_friend" do
    get my_friend_url(@my_friend)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_friend_url(@my_friend)
    assert_response :success
  end

  test "should update my_friend" do
    patch my_friend_url(@my_friend), params: { my_friend: { email: @my_friend.email, first_name: @my_friend.first_name, last_name: @my_friend.last_name, phone: @my_friend.phone, twitter: @my_friend.twitter } }
    assert_redirected_to my_friend_url(@my_friend)
  end

  test "should destroy my_friend" do
    assert_difference("MyFriend.count", -1) do
      delete my_friend_url(@my_friend)
    end

    assert_redirected_to my_friends_url
  end
end
