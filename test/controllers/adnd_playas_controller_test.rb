require "test_helper"

class AdndPlayasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adnd_playa = adnd_playas(:one)
  end

  test "should get index" do
    get adnd_playas_url
    assert_response :success
  end

  test "should get new" do
    get new_adnd_playa_url
    assert_response :success
  end

  test "should create adnd_playa" do
    assert_difference('AdndPlaya.count') do
      post adnd_playas_url, params: { adnd_playa: { localizacion: @adnd_playa.localizacion, subtitulo: @adnd_playa.subtitulo, titulo: @adnd_playa.titulo } }
    end

    assert_redirected_to adnd_playa_url(AdndPlaya.last)
  end

  test "should show adnd_playa" do
    get adnd_playa_url(@adnd_playa)
    assert_response :success
  end

  test "should get edit" do
    get edit_adnd_playa_url(@adnd_playa)
    assert_response :success
  end

  test "should update adnd_playa" do
    patch adnd_playa_url(@adnd_playa), params: { adnd_playa: { localizacion: @adnd_playa.localizacion, subtitulo: @adnd_playa.subtitulo, titulo: @adnd_playa.titulo } }
    assert_redirected_to adnd_playa_url(@adnd_playa)
  end

  test "should destroy adnd_playa" do
    assert_difference('AdndPlaya.count', -1) do
      delete adnd_playa_url(@adnd_playa)
    end

    assert_redirected_to adnd_playas_url
  end
end
