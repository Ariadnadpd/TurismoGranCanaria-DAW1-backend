require "test_helper"

class PreguntasfrecuentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @preguntasfrecuente = preguntasfrecuentes(:one)
  end

  test "should get index" do
    get preguntasfrecuentes_url
    assert_response :success
  end

  test "should get new" do
    get new_preguntasfrecuente_url
    assert_response :success
  end

  test "should create preguntasfrecuente" do
    assert_difference('Preguntasfrecuente.count') do
      post preguntasfrecuentes_url, params: { preguntasfrecuente: { pregunta: @preguntasfrecuente.pregunta, respuesta: @preguntasfrecuente.respuesta } }
    end

    assert_redirected_to preguntasfrecuente_url(Preguntasfrecuente.last)
  end

  test "should show preguntasfrecuente" do
    get preguntasfrecuente_url(@preguntasfrecuente)
    assert_response :success
  end

  test "should get edit" do
    get edit_preguntasfrecuente_url(@preguntasfrecuente)
    assert_response :success
  end

  test "should update preguntasfrecuente" do
    patch preguntasfrecuente_url(@preguntasfrecuente), params: { preguntasfrecuente: { pregunta: @preguntasfrecuente.pregunta, respuesta: @preguntasfrecuente.respuesta } }
    assert_redirected_to preguntasfrecuente_url(@preguntasfrecuente)
  end

  test "should destroy preguntasfrecuente" do
    assert_difference('Preguntasfrecuente.count', -1) do
      delete preguntasfrecuente_url(@preguntasfrecuente)
    end

    assert_redirected_to preguntasfrecuentes_url
  end
end
