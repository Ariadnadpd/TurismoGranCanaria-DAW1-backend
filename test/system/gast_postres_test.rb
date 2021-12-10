require "application_system_test_case"

class GastPostresTest < ApplicationSystemTestCase
  setup do
    @gast_postre = gast_postres(:one)
  end

  test "visiting the index" do
    visit gast_postres_url
    assert_selector "h1", text: "Gast Postres"
  end

  test "creating a Gast postre" do
    visit gast_postres_url
    click_on "New Gast Postre"

    fill_in "Informacion", with: @gast_postre.informacion
    fill_in "Localizacion", with: @gast_postre.localizacion
    fill_in "Rss facebook", with: @gast_postre.rss_facebook
    fill_in "Rss instagram", with: @gast_postre.rss_instagram
    fill_in "Subtitulo", with: @gast_postre.subtitulo
    fill_in "Telefono", with: @gast_postre.telefono
    fill_in "Titulo", with: @gast_postre.titulo
    click_on "Create Gast postre"

    assert_text "Gast postre was successfully created"
    click_on "Back"
  end

  test "updating a Gast postre" do
    visit gast_postres_url
    click_on "Edit", match: :first

    fill_in "Informacion", with: @gast_postre.informacion
    fill_in "Localizacion", with: @gast_postre.localizacion
    fill_in "Rss facebook", with: @gast_postre.rss_facebook
    fill_in "Rss instagram", with: @gast_postre.rss_instagram
    fill_in "Subtitulo", with: @gast_postre.subtitulo
    fill_in "Telefono", with: @gast_postre.telefono
    fill_in "Titulo", with: @gast_postre.titulo
    click_on "Update Gast postre"

    assert_text "Gast postre was successfully updated"
    click_on "Back"
  end

  test "destroying a Gast postre" do
    visit gast_postres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gast postre was successfully destroyed"
  end
end
