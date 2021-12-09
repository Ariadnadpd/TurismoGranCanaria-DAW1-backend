require "test_helper"

class ActBuceosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @act_buceo = act_buceos(:one)
  end

  test "should get index" do
    get act_buceos_url
    assert_response :success
  end

  test "should get new" do
    get new_act_buceo_url
    assert_response :success
  end

  test "should create act_buceo" do
    assert_difference('ActBuceo.count') do
      post act_buceos_url, params: { act_buceo: { localizacion: @act_buceo.localizacion, sitioweb: @act_buceo.sitioweb, subtitulo: @act_buceo.subtitulo, telefono: @act_buceo.telefono, titulo: @act_buceo.titulo } }
    end

    assert_redirected_to act_buceo_url(ActBuceo.last)
  end

  test "should show act_buceo" do
    get act_buceo_url(@act_buceo)
    assert_response :success
  end

  test "should get edit" do
    get edit_act_buceo_url(@act_buceo)
    assert_response :success
  end

  test "should update act_buceo" do
    patch act_buceo_url(@act_buceo), params: { act_buceo: { localizacion: @act_buceo.localizacion, sitioweb: @act_buceo.sitioweb, subtitulo: @act_buceo.subtitulo, telefono: @act_buceo.telefono, titulo: @act_buceo.titulo } }
    assert_redirected_to act_buceo_url(@act_buceo)
  end

  test "should destroy act_buceo" do
    assert_difference('ActBuceo.count', -1) do
      delete act_buceo_url(@act_buceo)
    end

    assert_redirected_to act_buceos_url
  end
end
