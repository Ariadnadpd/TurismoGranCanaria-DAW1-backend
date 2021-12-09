require "test_helper"

class ActSenderismosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @act_senderismo = act_senderismos(:one)
  end

  test "should get index" do
    get act_senderismos_url
    assert_response :success
  end

  test "should get new" do
    get new_act_senderismo_url
    assert_response :success
  end

  test "should create act_senderismo" do
    assert_difference('ActSenderismo.count') do
      post act_senderismos_url, params: { act_senderismo: { ruta: @act_senderismo.ruta, subtitulo: @act_senderismo.subtitulo, titulo: @act_senderismo.titulo } }
    end

    assert_redirected_to act_senderismo_url(ActSenderismo.last)
  end

  test "should show act_senderismo" do
    get act_senderismo_url(@act_senderismo)
    assert_response :success
  end

  test "should get edit" do
    get edit_act_senderismo_url(@act_senderismo)
    assert_response :success
  end

  test "should update act_senderismo" do
    patch act_senderismo_url(@act_senderismo), params: { act_senderismo: { ruta: @act_senderismo.ruta, subtitulo: @act_senderismo.subtitulo, titulo: @act_senderismo.titulo } }
    assert_redirected_to act_senderismo_url(@act_senderismo)
  end

  test "should destroy act_senderismo" do
    assert_difference('ActSenderismo.count', -1) do
      delete act_senderismo_url(@act_senderismo)
    end

    assert_redirected_to act_senderismos_url
  end
end
