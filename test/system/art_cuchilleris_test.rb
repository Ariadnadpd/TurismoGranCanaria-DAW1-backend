require "application_system_test_case"

class ArtCuchillerisTest < ApplicationSystemTestCase
  setup do
    @art_cuchilleri = art_cuchilleris(:one)
  end

  test "visiting the index" do
    visit art_cuchilleris_url
    assert_selector "h1", text: "Art Cuchilleris"
  end

  test "creating a Art cuchilleri" do
    visit art_cuchilleris_url
    click_on "New Art Cuchilleri"

    fill_in "Informacion", with: @art_cuchilleri.informacion
    fill_in "Localizacion", with: @art_cuchilleri.localizacion
    fill_in "Rss facebook", with: @art_cuchilleri.rss_facebook
    fill_in "Subtitulo", with: @art_cuchilleri.subtitulo
    fill_in "Telefono", with: @art_cuchilleri.telefono
    fill_in "Titulo", with: @art_cuchilleri.titulo
    click_on "Create Art cuchilleri"

    assert_text "Art cuchilleri was successfully created"
    click_on "Back"
  end

  test "updating a Art cuchilleri" do
    visit art_cuchilleris_url
    click_on "Edit", match: :first

    fill_in "Informacion", with: @art_cuchilleri.informacion
    fill_in "Localizacion", with: @art_cuchilleri.localizacion
    fill_in "Rss facebook", with: @art_cuchilleri.rss_facebook
    fill_in "Subtitulo", with: @art_cuchilleri.subtitulo
    fill_in "Telefono", with: @art_cuchilleri.telefono
    fill_in "Titulo", with: @art_cuchilleri.titulo
    click_on "Update Art cuchilleri"

    assert_text "Art cuchilleri was successfully updated"
    click_on "Back"
  end

  test "destroying a Art cuchilleri" do
    visit art_cuchilleris_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Art cuchilleri was successfully destroyed"
  end
end
