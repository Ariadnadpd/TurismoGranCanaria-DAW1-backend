require "test_helper"

class ArtCuchillerisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @art_cuchilleri = art_cuchilleris(:one)
  end

  test "should get index" do
    get art_cuchilleris_url
    assert_response :success
  end

  test "should get new" do
    get new_art_cuchilleri_url
    assert_response :success
  end

  test "should create art_cuchilleri" do
    assert_difference('ArtCuchilleri.count') do
      post art_cuchilleris_url, params: { art_cuchilleri: { informacion: @art_cuchilleri.informacion, localizacion: @art_cuchilleri.localizacion, rss_facebook: @art_cuchilleri.rss_facebook, subtitulo: @art_cuchilleri.subtitulo, telefono: @art_cuchilleri.telefono, titulo: @art_cuchilleri.titulo } }
    end

    assert_redirected_to art_cuchilleri_url(ArtCuchilleri.last)
  end

  test "should show art_cuchilleri" do
    get art_cuchilleri_url(@art_cuchilleri)
    assert_response :success
  end

  test "should get edit" do
    get edit_art_cuchilleri_url(@art_cuchilleri)
    assert_response :success
  end

  test "should update art_cuchilleri" do
    patch art_cuchilleri_url(@art_cuchilleri), params: { art_cuchilleri: { informacion: @art_cuchilleri.informacion, localizacion: @art_cuchilleri.localizacion, rss_facebook: @art_cuchilleri.rss_facebook, subtitulo: @art_cuchilleri.subtitulo, telefono: @art_cuchilleri.telefono, titulo: @art_cuchilleri.titulo } }
    assert_redirected_to art_cuchilleri_url(@art_cuchilleri)
  end

  test "should destroy art_cuchilleri" do
    assert_difference('ArtCuchilleri.count', -1) do
      delete art_cuchilleri_url(@art_cuchilleri)
    end

    assert_redirected_to art_cuchilleris_url
  end
end
