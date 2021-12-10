require "test_helper"

class ArtTtradicionalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @art_ttradicionale = art_ttradicionales(:one)
  end

  test "should get index" do
    get art_ttradicionales_url
    assert_response :success
  end

  test "should get new" do
    get new_art_ttradicionale_url
    assert_response :success
  end

  test "should create art_ttradicionale" do
    assert_difference('ArtTtradicionale.count') do
      post art_ttradicionales_url, params: { art_ttradicionale: { informacion: @art_ttradicionale.informacion, localizacion: @art_ttradicionale.localizacion, rss_facebook: @art_ttradicionale.rss_facebook, rss_instagram: @art_ttradicionale.rss_instagram, subtitulo: @art_ttradicionale.subtitulo, telefono: @art_ttradicionale.telefono, titulo: @art_ttradicionale.titulo } }
    end

    assert_redirected_to art_ttradicionale_url(ArtTtradicionale.last)
  end

  test "should show art_ttradicionale" do
    get art_ttradicionale_url(@art_ttradicionale)
    assert_response :success
  end

  test "should get edit" do
    get edit_art_ttradicionale_url(@art_ttradicionale)
    assert_response :success
  end

  test "should update art_ttradicionale" do
    patch art_ttradicionale_url(@art_ttradicionale), params: { art_ttradicionale: { informacion: @art_ttradicionale.informacion, localizacion: @art_ttradicionale.localizacion, rss_facebook: @art_ttradicionale.rss_facebook, rss_instagram: @art_ttradicionale.rss_instagram, subtitulo: @art_ttradicionale.subtitulo, telefono: @art_ttradicionale.telefono, titulo: @art_ttradicionale.titulo } }
    assert_redirected_to art_ttradicionale_url(@art_ttradicionale)
  end

  test "should destroy art_ttradicionale" do
    assert_difference('ArtTtradicionale.count', -1) do
      delete art_ttradicionale_url(@art_ttradicionale)
    end

    assert_redirected_to art_ttradicionales_url
  end
end
