require 'test_helper'

class HandicapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @handicap = handicaps(:one)
  end

# test "should get index" do
#   get handicaps_url, as: :json
#   assert_response :success
# end

  test "should create handicap" do
    assert_difference('Handicap.count') do
      post handicaps_url, params: { handicap: { description: @handicap.description } }, as: :json
      #post handicaps_url, params: { handicap: { description: @handicap.description, id_handicap: @handicap.id_handicap } }, as: :json
    end

    assert_response 201
  end

  test "should show handicap" do
    get handicap_url(@handicap), as: :json
    assert_response :success
  end

  test "should update handicap" do
    patch handicap_url(@handicap), params: { handicap: { description: @handicap.description } }, as: :json
    #patch handicap_url(@handicap), params: { handicap: { description: @handicap.description, id_handicap: @handicap.id_handicap } }, as: :json
    assert_response 200
  end

  test "should destroy handicap" do
    assert_difference('Handicap.count', -1) do
      delete handicap_url(@handicap), as: :json
    end

    assert_response 204
  end
end
