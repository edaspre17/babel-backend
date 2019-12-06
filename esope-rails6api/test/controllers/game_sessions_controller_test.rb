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
      post game_sessions_url, params: { game_session: { finished_date: @game_session.finished_date, guardian_comment: @game_session.guardian_comment, id_child: @game_session.id_child, id_game: @game_session.id_game, id_user_prof: @game_session.id_user_prof, mandate: @game_session.mandate, prof_comment: @game_session.prof_comment, startdate: @game_session.startdate, step_one: @game_session.step_one, step_three: @game_session.step_three, step_two: @game_session.step_two, version: @game_session.version } }, as: :json
    end

    assert_response 201
  end

  test "should show game_session" do
    get game_session_url(@game_session), as: :json
    assert_response :success
  end

  test "should update game_session" do
    patch game_session_url(@game_session), params: { game_session: { finished_date: @game_session.finished_date, guardian_comment: @game_session.guardian_comment, id_child: @game_session.id_child, id_game: @game_session.id_game, id_user_prof: @game_session.id_user_prof, mandate: @game_session.mandate, prof_comment: @game_session.prof_comment, startdate: @game_session.startdate, step_one: @game_session.step_one, step_three: @game_session.step_three, step_two: @game_session.step_two, version: @game_session.version } }, as: :json
    assert_response 200
  end

  test "should destroy game_session" do
    assert_difference('GameSession.count', -1) do
      delete game_session_url(@game_session), as: :json
    end

    assert_response 204
  end
end
