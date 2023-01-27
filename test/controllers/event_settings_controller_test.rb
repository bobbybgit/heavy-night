require "test_helper"

class EventSettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_setting = event_settings(:one)
  end

  test "should get index" do
    get event_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_event_setting_url
    assert_response :success
  end

  test "should create event_setting" do
    assert_difference("EventSetting.count") do
      post event_settings_url, params: { event_setting: { max_game_length: @event_setting.max_game_length, max_per_group: @event_setting.max_per_group, max_weight: @event_setting.max_weight, min_game_length: @event_setting.min_game_length, min_per_group: @event_setting.min_per_group, min_weight: @event_setting.min_weight, use_rec_player_count: @event_setting.use_rec_player_count } }
    end

    assert_redirected_to event_setting_url(EventSetting.last)
  end

  test "should show event_setting" do
    get event_setting_url(@event_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_setting_url(@event_setting)
    assert_response :success
  end

  test "should update event_setting" do
    patch event_setting_url(@event_setting), params: { event_setting: { max_game_length: @event_setting.max_game_length, max_per_group: @event_setting.max_per_group, max_weight: @event_setting.max_weight, min_game_length: @event_setting.min_game_length, min_per_group: @event_setting.min_per_group, min_weight: @event_setting.min_weight, use_rec_player_count: @event_setting.use_rec_player_count } }
    assert_redirected_to event_setting_url(@event_setting)
  end

  test "should destroy event_setting" do
    assert_difference("EventSetting.count", -1) do
      delete event_setting_url(@event_setting)
    end

    assert_redirected_to event_settings_url
  end
end
