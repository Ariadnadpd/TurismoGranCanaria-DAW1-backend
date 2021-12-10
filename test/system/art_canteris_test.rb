require "application_system_test_case"

class ArtCanterisTest < ApplicationSystemTestCase
  setup do
    @art_canteri = art_canteris(:one)
  end

  test "visiting the index" do
    visit art_canteris_url
    assert_selector "h1", text: "Art Canteris"
  end

  test "creating a Art canteri" do
    visit art_canteris_url
    click_on "New Art Canteri"

    fill_in "Informacion", with: @art_canteri.informacion
    fill_in "Localizacion", with: @art_canteri.localizacion
    fill_in "Rss facebook", with: @art_canteri.rss_facebook
    fill_in "Subtitulo", with: @art_canteri.subtitulo
    fill_in "Telefono", with: @art_canteri.telefono
    fill_in "Titulo", with: @art_canteri.titulo
    click_on "Create Art canteri"

    assert_text "Art canteri was successfully created"
    click_on "Back"
  end

  test "updating a Art canteri" do
    visit art_canteris_url
    click_on "Edit", match: :first

    fill_in "Informacion", with: @art_canteri.informacion
    fill_in "Localizacion", with: @art_canteri.localizacion
    fill_in "Rss facebook", with: @art_canteri.rss_facebook
    fill_in "Subtitulo", with: @art_canteri.subtitulo
    fill_in "Telefono", with: @art_canteri.telefono
    fill_in "Titulo", with: @art_canteri.titulo
    click_on "Update Art canteri"

    assert_text "Art canteri was successfully updated"
    click_on "Back"
  end

  test "destroying a Art canteri" do
    visit art_canteris_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Art canteri was successfully destroyed"
  end
end
