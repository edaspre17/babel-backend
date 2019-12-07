require 'test_helper'

class SelectedCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @selected_category = selected_categories(:one)
  end

  test "should get index" do
    get selected_categories_url, as: :json
    assert_response :success
  end

  test "should create selected_category" do
    assert_difference('SelectedCategory.count') do
      post selected_categories_url, params: { selected_category: { category_id: @selected_category.category_id, game_session_id: @selected_category.game_session_id, sorting: @selected_category.sorting, status: @selected_category.status } }, as: :json
    end

    assert_response 201
  end

  test "should show selected_category" do
    get selected_category_url(@selected_category), as: :json
    assert_response :success
  end

  test "should update selected_category" do
    patch selected_category_url(@selected_category), params: { selected_category: { category_id: @selected_category.category_id, game_session_id: @selected_category.game_session_id, sorting: @selected_category.sorting, status: @selected_category.status } }, as: :json
    assert_response 200
  end

  test "should destroy selected_category" do
    assert_difference('SelectedCategory.count', -1) do
      delete selected_category_url(@selected_category), as: :json
    end

    assert_response 204
  end
end
