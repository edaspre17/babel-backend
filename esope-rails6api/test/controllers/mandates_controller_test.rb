require 'test_helper'

class MandatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mandate = mandates(:one)
  end

  test "should get index" do
    get mandates_url, as: :json
    assert_response :success
  end

  test "should create mandate" do
    assert_difference('Mandate.count') do
      post mandates_url, params: { mandate: { child_id: @mandate.child_id, demand: @mandate.demand, id_mandate: @mandate.id_mandate, insert_date: @mandate.insert_date, investigator: @mandate.investigator } }, as: :json
    end

    assert_response 201
  end

  test "should show mandate" do
    get mandate_url(@mandate), as: :json
    assert_response :success
  end

  test "should update mandate" do
    patch mandate_url(@mandate), params: { mandate: { child_id: @mandate.child_id, demand: @mandate.demand, id_mandate: @mandate.id_mandate, insert_date: @mandate.insert_date, investigator: @mandate.investigator } }, as: :json
    assert_response 200
  end

  test "should destroy mandate" do
    assert_difference('Mandate.count', -1) do
      delete mandate_url(@mandate), as: :json
    end

    assert_response 204
  end
end
