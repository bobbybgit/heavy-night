require "application_system_test_case"

class PlaySessionsTest < ApplicationSystemTestCase
  setup do
    @play_session = play_sessions(:one)
  end

  test "visiting the index" do
    visit play_sessions_url
    assert_selector "h1", text: "Play sessions"
  end

  test "should create play session" do
    visit play_sessions_url
    click_on "New play session"

    fill_in "Collection", with: @play_session.collection_id
    fill_in "Event", with: @play_session.event_id
    fill_in "Max slots", with: @play_session.max_slots
    fill_in "Slot number", with: @play_session.slot_number
    fill_in "User", with: @play_session.user_id
    click_on "Create Play session"

    assert_text "Play session was successfully created"
    click_on "Back"
  end

  test "should update Play session" do
    visit play_session_url(@play_session)
    click_on "Edit this play session", match: :first

    fill_in "Collection", with: @play_session.collection_id
    fill_in "Event", with: @play_session.event_id
    fill_in "Max slots", with: @play_session.max_slots
    fill_in "Slot number", with: @play_session.slot_number
    fill_in "User", with: @play_session.user_id
    click_on "Update Play session"

    assert_text "Play session was successfully updated"
    click_on "Back"
  end

  test "should destroy Play session" do
    visit play_session_url(@play_session)
    click_on "Destroy this play session", match: :first

    assert_text "Play session was successfully destroyed"
  end
end
