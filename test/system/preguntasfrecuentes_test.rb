require "application_system_test_case"

class PreguntasfrecuentesTest < ApplicationSystemTestCase
  setup do
    @preguntasfrecuente = preguntasfrecuentes(:one)
  end

  test "visiting the index" do
    visit preguntasfrecuentes_url
    assert_selector "h1", text: "Preguntasfrecuentes"
  end

  test "creating a Preguntasfrecuente" do
    visit preguntasfrecuentes_url
    click_on "New Preguntasfrecuente"

    fill_in "Pregunta", with: @preguntasfrecuente.pregunta
    fill_in "Respuesta", with: @preguntasfrecuente.respuesta
    click_on "Create Preguntasfrecuente"

    assert_text "Preguntasfrecuente was successfully created"
    click_on "Back"
  end

  test "updating a Preguntasfrecuente" do
    visit preguntasfrecuentes_url
    click_on "Edit", match: :first

    fill_in "Pregunta", with: @preguntasfrecuente.pregunta
    fill_in "Respuesta", with: @preguntasfrecuente.respuesta
    click_on "Update Preguntasfrecuente"

    assert_text "Preguntasfrecuente was successfully updated"
    click_on "Back"
  end

  test "destroying a Preguntasfrecuente" do
    visit preguntasfrecuentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Preguntasfrecuente was successfully destroyed"
  end
end
