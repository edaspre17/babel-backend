require 'test_helper'

class ProfessionalsToChildrenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professionals_to_child = professionals_to_children(:one)
  end

# test "should get index" do
#   get professionals_to_children_url, as: :json
#   assert_response :success
# end

  test "should create professionals_to_child" do
    assert_difference('ProfessionalsToChild.count') do
      #post professionals_to_children_url, params: { professionals_to_child: { child_id: @professionals_to_child.child_id, end_care_date: @professionals_to_child.en_care_date, id_care: @professionals_to_child.id_care, start_care_date: @professionals_to_child.start_care_date, user_id: @professionals_to_child.user_id } }, as: :json
      post professionals_to_children_url, params: { professionals_to_child: { child_id: @professionals_to_child.child_id, end_care_date: @professionals_to_child.en_care_date, start_care_date: @professionals_to_child.start_care_date, user_id: @professionals_to_child.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show professionals_to_child" do
    get professionals_to_child_url(@professionals_to_child), as: :json
    assert_response :success
  end

  test "should update professionals_to_child" do
    #patch professionals_to_child_url(@professionals_to_child), params: { professionals_to_child: { child_id: @professionals_to_child.child_id, end_care_date: @professionals_to_child.en_care_date, id_care: @professionals_to_child.id_care, start_care_date: @professionals_to_child.start_care_date, user_id: @professionals_to_child.user_id } }, as: :json
    patch professionals_to_child_url(@professionals_to_child), params: { professionals_to_child: { child_id: @professionals_to_child.child_id, end_care_date: @professionals_to_child.en_care_date, start_care_date: @professionals_to_child.start_care_date, user_id: @professionals_to_child.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy professionals_to_child" do
    assert_difference('ProfessionalsToChild.count', -1) do
      delete professionals_to_child_url(@professionals_to_child), as: :json
    end

    assert_response 204
  end
end
