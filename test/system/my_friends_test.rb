require "application_system_test_case"

class MyFriendsTest < ApplicationSystemTestCase
  setup do
    @my_friend = my_friends(:one)
  end

  test "visiting the index" do
    visit my_friends_url
    assert_selector "h1", text: "My friends"
  end

  test "should create my friend" do
    visit my_friends_url
    click_on "New my friend"

    fill_in "Email", with: @my_friend.email
    fill_in "First name", with: @my_friend.first_name
    fill_in "Last name", with: @my_friend.last_name
    fill_in "Phone", with: @my_friend.phone
    fill_in "Twitter", with: @my_friend.twitter
    click_on "Create My friend"

    assert_text "My friend was successfully created"
    click_on "Back"
  end

  test "should update My friend" do
    visit my_friend_url(@my_friend)
    click_on "Edit this my friend", match: :first

    fill_in "Email", with: @my_friend.email
    fill_in "First name", with: @my_friend.first_name
    fill_in "Last name", with: @my_friend.last_name
    fill_in "Phone", with: @my_friend.phone
    fill_in "Twitter", with: @my_friend.twitter
    click_on "Update My friend"

    assert_text "My friend was successfully updated"
    click_on "Back"
  end

  test "should destroy My friend" do
    visit my_friend_url(@my_friend)
    click_on "Destroy this my friend", match: :first

    assert_text "My friend was successfully destroyed"
  end
end
