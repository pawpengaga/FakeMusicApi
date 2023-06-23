require "test_helper"

class MusicAlbumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @music_album = music_albums(:one)
  end

  test "should get index" do
    get music_albums_url, as: :json
    assert_response :success
  end

  test "should create music_album" do
    assert_difference("MusicAlbum.count") do
      post music_albums_url, params: { music_album: { band: @music_album.band, genre: @music_album.genre, name: @music_album.name } }, as: :json
    end

    assert_response :created
  end

  test "should show music_album" do
    get music_album_url(@music_album), as: :json
    assert_response :success
  end

  test "should update music_album" do
    patch music_album_url(@music_album), params: { music_album: { band: @music_album.band, genre: @music_album.genre, name: @music_album.name } }, as: :json
    assert_response :success
  end

  test "should destroy music_album" do
    assert_difference("MusicAlbum.count", -1) do
      delete music_album_url(@music_album), as: :json
    end

    assert_response :no_content
  end
end
