require 'test_helper'

class HandicapToChildrenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @handicap_to_child = handicap_to_children(:one)
  end

  test "should get index" do
    get handicap_to_children_url, as: :json
    assert_response :success
  end

  test "should create handicap_to_child" do
    assert_difference('HandicapToChild.count') do
      post handicap_to_children_url, params: { handicap_to_child: { comment: @handicap_to_child.comment, id_child: @handicap_to_child.id_child, id_handicap: @handicap_to_child.id_handicap } }, as: :json
    end

    assert_response 201
  end

  test "should show handicap_to_child" do
    get handicap_to_child_url(@handicap_to_child), as: :json
    assert_response :success
  end

  test "should update handicap_to_child" do
    patch handicap_to_child_url(@handicap_to_child), params: { handicap_to_child: { comment: @handicap_to_child.comment, id_child: @handicap_to_child.id_child, id_handicap: @handicap_to_child.id_handicap } }, as: :json
    assert_response 200
  end

  test "should destroy handicap_to_child" do
    assert_difference('HandicapToChild.count', -1) do
      delete handicap_to_child_url(@handicap_to_child), as: :json
    end

    assert_response 204
  end
end
