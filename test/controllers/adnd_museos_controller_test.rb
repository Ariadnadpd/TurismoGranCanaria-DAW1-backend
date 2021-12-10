require "test_helper"

class AdndMuseosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adnd_museo = adnd_museos(:one)
  end

  test "should get index" do
    get adnd_museos_url
    assert_response :success
  end

  test "should get new" do
    get new_adnd_museo_url
    assert_response :success
  end

  test "should create adnd_museo" do
    assert_difference('AdndMuseo.count') do
      post adnd_museos_url, params: { adnd_museo: { localizacion: @adnd_museo.localizacion, sitioweb: @adnd_museo.sitioweb, subtitulo: @adnd_museo.subtitulo, telefono: @adnd_museo.telefono, titulo: @adnd_museo.titulo } }
    end

    assert_redirected_to adnd_museo_url(AdndMuseo.last)
  end

  test "should show adnd_museo" do
    get adnd_museo_url(@adnd_museo)
    assert_response :success
  end

  test "should get edit" do
    get edit_adnd_museo_url(@adnd_museo)
    assert_response :success
  end

  test "should update adnd_museo" do
    patch adnd_museo_url(@adnd_museo), params: { adnd_museo: { localizacion: @adnd_museo.localizacion, sitioweb: @adnd_museo.sitioweb, subtitulo: @adnd_museo.subtitulo, telefono: @adnd_museo.telefono, titulo: @adnd_museo.titulo } }
    assert_redirected_to adnd_museo_url(@adnd_museo)
  end

  test "should destroy adnd_museo" do
    assert_difference('AdndMuseo.count', -1) do
      delete adnd_museo_url(@adnd_museo)
    end

    assert_redirected_to adnd_museos_url
  end
end
