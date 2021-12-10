require "test_helper"

class GastPostresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gast_postre = gast_postres(:one)
  end

  test "should get index" do
    get gast_postres_url
    assert_response :success
  end

  test "should get new" do
    get new_gast_postre_url
    assert_response :success
  end

  test "should create gast_postre" do
    assert_difference('GastPostre.count') do
      post gast_postres_url, params: { gast_postre: { informacion: @gast_postre.informacion, localizacion: @gast_postre.localizacion, rss_facebook: @gast_postre.rss_facebook, rss_instagram: @gast_postre.rss_instagram, subtitulo: @gast_postre.subtitulo, telefono: @gast_postre.telefono, titulo: @gast_postre.titulo } }
    end

    assert_redirected_to gast_postre_url(GastPostre.last)
  end

  test "should show gast_postre" do
    get gast_postre_url(@gast_postre)
    assert_response :success
  end

  test "should get edit" do
    get edit_gast_postre_url(@gast_postre)
    assert_response :success
  end

  test "should update gast_postre" do
    patch gast_postre_url(@gast_postre), params: { gast_postre: { informacion: @gast_postre.informacion, localizacion: @gast_postre.localizacion, rss_facebook: @gast_postre.rss_facebook, rss_instagram: @gast_postre.rss_instagram, subtitulo: @gast_postre.subtitulo, telefono: @gast_postre.telefono, titulo: @gast_postre.titulo } }
    assert_redirected_to gast_postre_url(@gast_postre)
  end

  test "should destroy gast_postre" do
    assert_difference('GastPostre.count', -1) do
      delete gast_postre_url(@gast_postre)
    end

    assert_redirected_to gast_postres_url
  end
end
