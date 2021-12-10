require "application_system_test_case"

class ArtTtradicionalesTest < ApplicationSystemTestCase
  setup do
    @art_ttradicionale = art_ttradicionales(:one)
  end

  test "visiting the index" do
    visit art_ttradicionales_url
    assert_selector "h1", text: "Art Ttradicionales"
  end

  test "creating a Art ttradicionale" do
    visit art_ttradicionales_url
    click_on "New Art Ttradicionale"

    fill_in "Informacion", with: @art_ttradicionale.informacion
    fill_in "Localizacion", with: @art_ttradicionale.localizacion
    fill_in "Rss facebook", with: @art_ttradicionale.rss_facebook
    fill_in "Rss instagram", with: @art_ttradicionale.rss_instagram
    fill_in "Subtitulo", with: @art_ttradicionale.subtitulo
    fill_in "Telefono", with: @art_ttradicionale.telefono
    fill_in "Titulo", with: @art_ttradicionale.titulo
    click_on "Create Art ttradicionale"

    assert_text "Art ttradicionale was successfully created"
    click_on "Back"
  end

  test "updating a Art ttradicionale" do
    visit art_ttradicionales_url
    click_on "Edit", match: :first

    fill_in "Informacion", with: @art_ttradicionale.informacion
    fill_in "Localizacion", with: @art_ttradicionale.localizacion
    fill_in "Rss facebook", with: @art_ttradicionale.rss_facebook
    fill_in "Rss instagram", with: @art_ttradicionale.rss_instagram
    fill_in "Subtitulo", with: @art_ttradicionale.subtitulo
    fill_in "Telefono", with: @art_ttradicionale.telefono
    fill_in "Titulo", with: @art_ttradicionale.titulo
    click_on "Update Art ttradicionale"

    assert_text "Art ttradicionale was successfully updated"
    click_on "Back"
  end

  test "destroying a Art ttradicionale" do
    visit art_ttradicionales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Art ttradicionale was successfully destroyed"
  end
end
