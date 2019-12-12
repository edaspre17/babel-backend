require 'test_helper'

class SelectedPicturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @selected_picture = selected_pictures(:one)
  end

# test "should get index" do
#   get selected_pictures_url, as: :json
#   assert_response :success
# end

  test "should create selected_picture" do
    assert_difference('SelectedPicture.count') do
      post selected_pictures_url, params: { selected_picture: { child_tag: @selected_picture.child_tag, do_like: @selected_picture.do_like, game_session_id: @selected_picture.game_session_id, is_autonomous: @selected_picture.is_autonomous, is_happy: @selected_picture.is_happy, note: @selected_picture.note, picture_id: @selected_picture.picture_id, priority: @selected_picture.priority, step_one_done: @selected_picture.step_one_done, step_three_done: @selected_picture.step_three_done, step_two_done: @selected_picture.step_two_done, version: @selected_picture.version, would_like: @selected_picture.would_like } }, as: :json
    end

    assert_response 201
  end

  test "should show selected_picture" do
    get selected_picture_url(@selected_picture), as: :json
    assert_response :success
  end

  test "should update selected_picture" do
    patch selected_picture_url(@selected_picture), params: { selected_picture: { child_tag: @selected_picture.child_tag, do_like: @selected_picture.do_like, game_session_id: @selected_picture.game_session_id, is_autonomous: @selected_picture.is_autonomous, is_happy: @selected_picture.is_happy, note: @selected_picture.note, picture_id: @selected_picture.picture_id, priority: @selected_picture.priority, step_one_done: @selected_picture.step_one_done, step_three_done: @selected_picture.step_three_done, step_two_done: @selected_picture.step_two_done, version: @selected_picture.version, would_like: @selected_picture.would_like } }, as: :json
    assert_response 200
  end

  test "should destroy selected_picture" do
    assert_difference('SelectedPicture.count', -1) do
      delete selected_picture_url(@selected_picture), as: :json
    end

    assert_response 204
  end
end
