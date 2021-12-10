require "application_system_test_case"

class GastPlatosTest < ApplicationSystemTestCase
  setup do
    @gast_plato = gast_platos(:one)
  end

  test "visiting the index" do
    visit gast_platos_url
    assert_selector "h1", text: "Gast Platos"
  end

  test "creating a Gast plato" do
    visit gast_platos_url
    click_on "New Gast Plato"

    fill_in "Informacion", with: @gast_plato.informacion
    fill_in "Localizacion", with: @gast_plato.localizacion
    fill_in "Rss facebook", with: @gast_plato.rss_facebook
    fill_in "Subtitulo", with: @gast_plato.subtitulo
    fill_in "Telefono", with: @gast_plato.telefono
    fill_in "Titulo", with: @gast_plato.titulo
    click_on "Create Gast plato"

    assert_text "Gast plato was successfully created"
    click_on "Back"
  end

  test "updating a Gast plato" do
    visit gast_platos_url
    click_on "Edit", match: :first

    fill_in "Informacion", with: @gast_plato.informacion
    fill_in "Localizacion", with: @gast_plato.localizacion
    fill_in "Rss facebook", with: @gast_plato.rss_facebook
    fill_in "Subtitulo", with: @gast_plato.subtitulo
    fill_in "Telefono", with: @gast_plato.telefono
    fill_in "Titulo", with: @gast_plato.titulo
    click_on "Update Gast plato"

    assert_text "Gast plato was successfully updated"
    click_on "Back"
  end

  test "destroying a Gast plato" do
    visit gast_platos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gast plato was successfully destroyed"
  end
end
