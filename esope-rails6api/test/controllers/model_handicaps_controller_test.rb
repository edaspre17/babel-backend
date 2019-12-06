require 'test_helper'

class ModelHandicapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @model_handicap = model_handicaps(:one)
  end

  test "should get index" do
    get model_handicaps_url, as: :json
    assert_response :success
  end

  test "should create model_handicap" do
    assert_difference('ModelHandicap.count') do
      post model_handicaps_url, params: { model_handicap: { description: @model_handicap.description, id: @model_handicap.id } }, as: :json
    end

    assert_response 201
  end

  test "should show model_handicap" do
    get model_handicap_url(@model_handicap), as: :json
    assert_response :success
  end

  test "should update model_handicap" do
    patch model_handicap_url(@model_handicap), params: { model_handicap: { description: @model_handicap.description, id: @model_handicap.id } }, as: :json
    assert_response 200
  end

  test "should destroy model_handicap" do
    assert_difference('ModelHandicap.count', -1) do
      delete model_handicap_url(@model_handicap), as: :json
    end

    assert_response 204
  end
end
