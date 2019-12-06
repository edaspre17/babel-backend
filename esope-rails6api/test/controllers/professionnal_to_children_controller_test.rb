require 'test_helper'

class ProfessionnalToChildrenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professionnal_to_child = professionnal_to_children(:one)
  end

  test "should get index" do
    get professionnal_to_children_url, as: :json
    assert_response :success
  end

  test "should create professionnal_to_child" do
    assert_difference('ProfessionnalToChild.count') do
      post professionnal_to_children_url, params: { professionnal_to_child: { end_care_date: @professionnal_to_child.end_care_date, id_care: @professionnal_to_child.id_care, id_child: @professionnal_to_child.id_child, id_user_prof: @professionnal_to_child.id_user_prof, start_care_date: @professionnal_to_child.start_care_date } }, as: :json
    end

    assert_response 201
  end

  test "should show professionnal_to_child" do
    get professionnal_to_child_url(@professionnal_to_child), as: :json
    assert_response :success
  end

  test "should update professionnal_to_child" do
    patch professionnal_to_child_url(@professionnal_to_child), params: { professionnal_to_child: { end_care_date: @professionnal_to_child.end_care_date, id_care: @professionnal_to_child.id_care, id_child: @professionnal_to_child.id_child, id_user_prof: @professionnal_to_child.id_user_prof, start_care_date: @professionnal_to_child.start_care_date } }, as: :json
    assert_response 200
  end

  test "should destroy professionnal_to_child" do
    assert_difference('ProfessionnalToChild.count', -1) do
      delete professionnal_to_child_url(@professionnal_to_child), as: :json
    end

    assert_response 204
  end
end
