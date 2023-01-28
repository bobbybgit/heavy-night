require "test_helper"

class PlaySessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @play_session = play_sessions(:one)
  end

  test "should get index" do
    get play_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_play_session_url
    assert_response :success
  end

  test "should create play_session" do
    assert_difference("PlaySession.count") do
      post play_sessions_url, params: { play_session: { collection_id: @play_session.collection_id, event_id: @play_session.event_id, max_slots: @play_session.max_slots, slot_number: @play_session.slot_number, user_id: @play_session.user_id } }
    end

    assert_redirected_to play_session_url(PlaySession.last)
  end

  test "should show play_session" do
    get play_session_url(@play_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_play_session_url(@play_session)
    assert_response :success
  end

  test "should update play_session" do
    patch play_session_url(@play_session), params: { play_session: { collection_id: @play_session.collection_id, event_id: @play_session.event_id, max_slots: @play_session.max_slots, slot_number: @play_session.slot_number, user_id: @play_session.user_id } }
    assert_redirected_to play_session_url(@play_session)
  end

  test "should destroy play_session" do
    assert_difference("PlaySession.count", -1) do
      delete play_session_url(@play_session)
    end

    assert_redirected_to play_sessions_url
  end
end
