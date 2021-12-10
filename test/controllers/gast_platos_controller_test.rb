require "test_helper"

class GastPlatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gast_plato = gast_platos(:one)
  end

  test "should get index" do
    get gast_platos_url
    assert_response :success
  end

  test "should get new" do
    get new_gast_plato_url
    assert_response :success
  end

  test "should create gast_plato" do
    assert_difference('GastPlato.count') do
      post gast_platos_url, params: { gast_plato: { informacion: @gast_plato.informacion, localizacion: @gast_plato.localizacion, rss_facebook: @gast_plato.rss_facebook, subtitulo: @gast_plato.subtitulo, telefono: @gast_plato.telefono, titulo: @gast_plato.titulo } }
    end

    assert_redirected_to gast_plato_url(GastPlato.last)
  end

  test "should show gast_plato" do
    get gast_plato_url(@gast_plato)
    assert_response :success
  end

  test "should get edit" do
    get edit_gast_plato_url(@gast_plato)
    assert_response :success
  end

  test "should update gast_plato" do
    patch gast_plato_url(@gast_plato), params: { gast_plato: { informacion: @gast_plato.informacion, localizacion: @gast_plato.localizacion, rss_facebook: @gast_plato.rss_facebook, subtitulo: @gast_plato.subtitulo, telefono: @gast_plato.telefono, titulo: @gast_plato.titulo } }
    assert_redirected_to gast_plato_url(@gast_plato)
  end

  test "should destroy gast_plato" do
    assert_difference('GastPlato.count', -1) do
      delete gast_plato_url(@gast_plato)
    end

    assert_redirected_to gast_platos_url
  end
end
