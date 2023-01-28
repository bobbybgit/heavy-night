require "test_helper"

class CollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collection = collections(:one)
  end

  test "should get index" do
    get collections_url
    assert_response :success
  end

  test "should get new" do
    get new_collection_url
    assert_response :success
  end

  test "should create collection" do
    assert_difference("Collection.count") do
      post collections_url, params: { collection: { game_id: @collection.game_id, image: @collection.image, max_players: @collection.max_players, min_players: @collection.min_players, player_id: @collection.player_id, rating: @collection.rating, rec_max_players: @collection.rec_max_players, rec_min_players: @collection.rec_min_players, venue_id: @collection.venue_id, venue_owned: @collection.venue_owned, weight: @collection.weight } }
    end

    assert_redirected_to collection_url(Collection.last)
  end

  test "should show collection" do
    get collection_url(@collection)
    assert_response :success
  end

  test "should get edit" do
    get edit_collection_url(@collection)
    assert_response :success
  end

  test "should update collection" do
    patch collection_url(@collection), params: { collection: { game_id: @collection.game_id, image: @collection.image, max_players: @collection.max_players, min_players: @collection.min_players, player_id: @collection.player_id, rating: @collection.rating, rec_max_players: @collection.rec_max_players, rec_min_players: @collection.rec_min_players, venue_id: @collection.venue_id, venue_owned: @collection.venue_owned, weight: @collection.weight } }
    assert_redirected_to collection_url(@collection)
  end

  test "should destroy collection" do
    assert_difference("Collection.count", -1) do
      delete collection_url(@collection)
    end

    assert_redirected_to collections_url
  end
end
