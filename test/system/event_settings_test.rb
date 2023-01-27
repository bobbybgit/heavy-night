require "application_system_test_case"

class EventSettingsTest < ApplicationSystemTestCase
  setup do
    @event_setting = event_settings(:one)
  end

  test "visiting the index" do
    visit event_settings_url
    assert_selector "h1", text: "Event settings"
  end

  test "should create event setting" do
    visit event_settings_url
    click_on "New event setting"

    fill_in "Max game length", with: @event_setting.max_game_length
    fill_in "Max per group", with: @event_setting.max_per_group
    fill_in "Max weight", with: @event_setting.max_weight
    fill_in "Min game length", with: @event_setting.min_game_length
    fill_in "Min per group", with: @event_setting.min_per_group
    fill_in "Min weight", with: @event_setting.min_weight
    check "Use rec player count" if @event_setting.use_rec_player_count
    click_on "Create Event setting"

    assert_text "Event setting was successfully created"
    click_on "Back"
  end

  test "should update Event setting" do
    visit event_setting_url(@event_setting)
    click_on "Edit this event setting", match: :first

    fill_in "Max game length", with: @event_setting.max_game_length
    fill_in "Max per group", with: @event_setting.max_per_group
    fill_in "Max weight", with: @event_setting.max_weight
    fill_in "Min game length", with: @event_setting.min_game_length
    fill_in "Min per group", with: @event_setting.min_per_group
    fill_in "Min weight", with: @event_setting.min_weight
    check "Use rec player count" if @event_setting.use_rec_player_count
    click_on "Update Event setting"

    assert_text "Event setting was successfully updated"
    click_on "Back"
  end

  test "should destroy Event setting" do
    visit event_setting_url(@event_setting)
    click_on "Destroy this event setting", match: :first

    assert_text "Event setting was successfully destroyed"
  end
end
