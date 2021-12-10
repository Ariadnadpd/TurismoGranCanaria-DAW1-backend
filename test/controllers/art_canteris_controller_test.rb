require "test_helper"

class ArtCanterisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @art_canteri = art_canteris(:one)
  end

  test "should get index" do
    get art_canteris_url
    assert_response :success
  end

  test "should get new" do
    get new_art_canteri_url
    assert_response :success
  end

  test "should create art_canteri" do
    assert_difference('ArtCanteri.count') do
      post art_canteris_url, params: { art_canteri: { informacion: @art_canteri.informacion, localizacion: @art_canteri.localizacion, rss_facebook: @art_canteri.rss_facebook, subtitulo: @art_canteri.subtitulo, telefono: @art_canteri.telefono, titulo: @art_canteri.titulo } }
    end

    assert_redirected_to art_canteri_url(ArtCanteri.last)
  end

  test "should show art_canteri" do
    get art_canteri_url(@art_canteri)
    assert_response :success
  end

  test "should get edit" do
    get edit_art_canteri_url(@art_canteri)
    assert_response :success
  end

  test "should update art_canteri" do
    patch art_canteri_url(@art_canteri), params: { art_canteri: { informacion: @art_canteri.informacion, localizacion: @art_canteri.localizacion, rss_facebook: @art_canteri.rss_facebook, subtitulo: @art_canteri.subtitulo, telefono: @art_canteri.telefono, titulo: @art_canteri.titulo } }
    assert_redirected_to art_canteri_url(@art_canteri)
  end

  test "should destroy art_canteri" do
    assert_difference('ArtCanteri.count', -1) do
      delete art_canteri_url(@art_canteri)
    end

    assert_redirected_to art_canteris_url
  end
end
