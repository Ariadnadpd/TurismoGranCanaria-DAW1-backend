require "test_helper"

class ArtAlfarerisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @art_alfareri = art_alfareris(:one)
  end

  test "should get index" do
    get art_alfareris_url
    assert_response :success
  end

  test "should get new" do
    get new_art_alfareri_url
    assert_response :success
  end

  test "should create art_alfareri" do
    assert_difference('ArtAlfareri.count') do
      post art_alfareris_url, params: { art_alfareri: { email: @art_alfareri.email, informacion: @art_alfareri.informacion, localizacion: @art_alfareri.localizacion, rss_facebook: @art_alfareri.rss_facebook, subtitulo: @art_alfareri.subtitulo, telefono: @art_alfareri.telefono, titulo: @art_alfareri.titulo } }
    end

    assert_redirected_to art_alfareri_url(ArtAlfareri.last)
  end

  test "should show art_alfareri" do
    get art_alfareri_url(@art_alfareri)
    assert_response :success
  end

  test "should get edit" do
    get edit_art_alfareri_url(@art_alfareri)
    assert_response :success
  end

  test "should update art_alfareri" do
    patch art_alfareri_url(@art_alfareri), params: { art_alfareri: { email: @art_alfareri.email, informacion: @art_alfareri.informacion, localizacion: @art_alfareri.localizacion, rss_facebook: @art_alfareri.rss_facebook, subtitulo: @art_alfareri.subtitulo, telefono: @art_alfareri.telefono, titulo: @art_alfareri.titulo } }
    assert_redirected_to art_alfareri_url(@art_alfareri)
  end

  test "should destroy art_alfareri" do
    assert_difference('ArtAlfareri.count', -1) do
      delete art_alfareri_url(@art_alfareri)
    end

    assert_redirected_to art_alfareris_url
  end
end
