require 'test_helper'

class GameSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_session = game_sessions(:one)
  end

  test "should get index" do
    get game_sessions_url, as: :json
    assert_response :success
  end

  test "should create game_session" do
    assert_difference('GameSession.count') do
      #post game_sessions_url, params: { game_session: { child_id: @game_session.child_id, finished_state: @game_session.finished_state, guardian_comment: @game_session.guardian_comment, id_game: @game_session.id_game, mandate_id: @game_session.mandate_id, prof_comment: @game_session.prof_comment, start_date: @game_session.start_date, step_one: @game_session.step_one, step_three: @game_session.step_three, step_two: @game_session.step_two, user_id: @game_session.user_id, version: @game_session.version } }, as: :json
      post game_sessions_url, params: { game_session: { child_id: @game_session.child_id, finished_state: @game_session.finished_state, guardian_comment: @game_session.guardian_comment, mandate_id: @game_session.mandate_id, prof_comment: @game_session.prof_comment, start_date: @game_session.start_date, step_one: @game_session.step_one, step_three: @game_session.step_three, step_two: @game_session.step_two, user_id: @game_session.user_id, version: @game_session.version } }, as: :json
    end

    assert_response 201
  end

  test "should show game_session" do
    get game_session_url(@game_session), as: :json
    assert_response :success
  end

  test "should update game_session" do
    #patch game_session_url(@game_session), params: { game_session: { child_id: @game_session.child_id, finished_state: @game_session.finished_state, guardian_comment: @game_session.guardian_comment, id_game: @game_session.id_game, mandate_id: @game_session.mandate_id, prof_comment: @game_session.prof_comment, start_date: @game_session.start_date, step_one: @game_session.step_one, step_three: @game_session.step_three, step_two: @game_session.step_two, user_id: @game_session.user_id, version: @game_session.version } }, as: :json
    patch game_session_url(@game_session), params: { game_session: { child_id: @game_session.child_id, finished_state: @game_session.finished_state, guardian_comment: @game_session.guardian_comment, mandate_id: @game_session.mandate_id, prof_comment: @game_session.prof_comment, start_date: @game_session.start_date, step_one: @game_session.step_one, step_three: @game_session.step_three, step_two: @game_session.step_two, user_id: @game_session.user_id, version: @game_session.version } }, as: :json
    assert_response 200
  end

  test "should destroy game_session" do
    assert_difference('GameSession.count', -1) do
      delete game_session_url(@game_session), as: :json
    end

    assert_response 204
  end
end
