require "test_helper"

class ActPtematicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @act_ptematico = act_ptematicos(:one)
  end

  test "should get index" do
    get act_ptematicos_url
    assert_response :success
  end

  test "should get new" do
    get new_act_ptematico_url
    assert_response :success
  end

  test "should create act_ptematico" do
    assert_difference('ActPtematico.count') do
      post act_ptematicos_url, params: { act_ptematico: { localizacion: @act_ptematico.localizacion, sitioweb: @act_ptematico.sitioweb, subtitulo: @act_ptematico.subtitulo, telefono: @act_ptematico.telefono, titulo: @act_ptematico.titulo } }
    end

    assert_redirected_to act_ptematico_url(ActPtematico.last)
  end

  test "should show act_ptematico" do
    get act_ptematico_url(@act_ptematico)
    assert_response :success
  end

  test "should get edit" do
    get edit_act_ptematico_url(@act_ptematico)
    assert_response :success
  end

  test "should update act_ptematico" do
    patch act_ptematico_url(@act_ptematico), params: { act_ptematico: { localizacion: @act_ptematico.localizacion, sitioweb: @act_ptematico.sitioweb, subtitulo: @act_ptematico.subtitulo, telefono: @act_ptematico.telefono, titulo: @act_ptematico.titulo } }
    assert_redirected_to act_ptematico_url(@act_ptematico)
  end

  test "should destroy act_ptematico" do
    assert_difference('ActPtematico.count', -1) do
      delete act_ptematico_url(@act_ptematico)
    end

    assert_redirected_to act_ptematicos_url
  end
end
