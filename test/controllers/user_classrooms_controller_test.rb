require "test_helper"

class UserClassroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_classroom = user_classrooms(:one)
  end

  test "should get index" do
    get user_classrooms_url, as: :json
    assert_response :success
  end

  test "should create user_classroom" do
    assert_difference("UserClassroom.count") do
      post user_classrooms_url, params: { user_classroom: { classroom_id: @user_classroom.classroom_id, user_id: @user_classroom.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show user_classroom" do
    get user_classroom_url(@user_classroom), as: :json
    assert_response :success
  end

  test "should update user_classroom" do
    patch user_classroom_url(@user_classroom), params: { user_classroom: { classroom_id: @user_classroom.classroom_id, user_id: @user_classroom.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy user_classroom" do
    assert_difference("UserClassroom.count", -1) do
      delete user_classroom_url(@user_classroom), as: :json
    end

    assert_response :no_content
  end
end
