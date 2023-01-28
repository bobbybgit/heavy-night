require "application_system_test_case"

class CollectionsTest < ApplicationSystemTestCase
  setup do
    @collection = collections(:one)
  end

  test "visiting the index" do
    visit collections_url
    assert_selector "h1", text: "Collections"
  end

  test "should create collection" do
    visit collections_url
    click_on "New collection"

    fill_in "Game", with: @collection.game_id
    fill_in "Image", with: @collection.image
    fill_in "Max players", with: @collection.max_players
    fill_in "Min players", with: @collection.min_players
    fill_in "Player", with: @collection.player_id
    fill_in "Rating", with: @collection.rating
    fill_in "Rec max players", with: @collection.rec_max_players
    fill_in "Rec min players", with: @collection.rec_min_players
    fill_in "Venue", with: @collection.venue_id
    check "Venue owned" if @collection.venue_owned
    fill_in "Weight", with: @collection.weight
    click_on "Create Collection"

    assert_text "Collection was successfully created"
    click_on "Back"
  end

  test "should update Collection" do
    visit collection_url(@collection)
    click_on "Edit this collection", match: :first

    fill_in "Game", with: @collection.game_id
    fill_in "Image", with: @collection.image
    fill_in "Max players", with: @collection.max_players
    fill_in "Min players", with: @collection.min_players
    fill_in "Player", with: @collection.player_id
    fill_in "Rating", with: @collection.rating
    fill_in "Rec max players", with: @collection.rec_max_players
    fill_in "Rec min players", with: @collection.rec_min_players
    fill_in "Venue", with: @collection.venue_id
    check "Venue owned" if @collection.venue_owned
    fill_in "Weight", with: @collection.weight
    click_on "Update Collection"

    assert_text "Collection was successfully updated"
    click_on "Back"
  end

  test "should destroy Collection" do
    visit collection_url(@collection)
    click_on "Destroy this collection", match: :first

    assert_text "Collection was successfully destroyed"
  end
end
