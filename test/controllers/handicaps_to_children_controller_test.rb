require 'test_helper'

class HandicapsToChildrenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @handicaps_to_child = handicaps_to_children(:one)
  end

#  test "should get index" do
#    get handicaps_to_children_url, as: :json
#    assert_response :success
#  end

  test "should create handicaps_to_child" do
    assert_difference('HandicapsToChild.count') do
      post handicaps_to_children_url, params: { handicaps_to_child: { child_id: @handicaps_to_child.child_id, comment: @handicaps_to_child.comment, handicap_id: @handicaps_to_child.handicap_id } }, as: :json
    end

    assert_response 201
  end

  test "should show handicaps_to_child" do
    get handicaps_to_child_url(@handicaps_to_child), as: :json
    assert_response :success
  end

  test "should update handicaps_to_child" do
    patch handicaps_to_child_url(@handicaps_to_child), params: { handicaps_to_child: { child_id: @handicaps_to_child.child_id, comment: @handicaps_to_child.comment, handicap_id: @handicaps_to_child.handicap_id } }, as: :json
    assert_response 200
  end

  test "should destroy handicaps_to_child" do
    assert_difference('HandicapsToChild.count', -1) do
      delete handicaps_to_child_url(@handicaps_to_child), as: :json
    end

    assert_response 204
  end
end
