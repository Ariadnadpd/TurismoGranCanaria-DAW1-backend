require "test_helper"

class AdndPnaturalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adnd_pnaturale = adnd_pnaturales(:one)
  end

  test "should get index" do
    get adnd_pnaturales_url
    assert_response :success
  end

  test "should get new" do
    get new_adnd_pnaturale_url
    assert_response :success
  end

  test "should create adnd_pnaturale" do
    assert_difference('AdndPnaturale.count') do
      post adnd_pnaturales_url, params: { adnd_pnaturale: { ruta: @adnd_pnaturale.ruta, subtitulo: @adnd_pnaturale.subtitulo, titulo: @adnd_pnaturale.titulo } }
    end

    assert_redirected_to adnd_pnaturale_url(AdndPnaturale.last)
  end

  test "should show adnd_pnaturale" do
    get adnd_pnaturale_url(@adnd_pnaturale)
    assert_response :success
  end

  test "should get edit" do
    get edit_adnd_pnaturale_url(@adnd_pnaturale)
    assert_response :success
  end

  test "should update adnd_pnaturale" do
    patch adnd_pnaturale_url(@adnd_pnaturale), params: { adnd_pnaturale: { ruta: @adnd_pnaturale.ruta, subtitulo: @adnd_pnaturale.subtitulo, titulo: @adnd_pnaturale.titulo } }
    assert_redirected_to adnd_pnaturale_url(@adnd_pnaturale)
  end

  test "should destroy adnd_pnaturale" do
    assert_difference('AdndPnaturale.count', -1) do
      delete adnd_pnaturale_url(@adnd_pnaturale)
    end

    assert_redirected_to adnd_pnaturales_url
  end
end
