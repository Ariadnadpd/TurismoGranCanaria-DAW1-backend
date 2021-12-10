require "application_system_test_case"

class ArtAlfarerisTest < ApplicationSystemTestCase
  setup do
    @art_alfareri = art_alfareris(:one)
  end

  test "visiting the index" do
    visit art_alfareris_url
    assert_selector "h1", text: "Art Alfareris"
  end

  test "creating a Art alfareri" do
    visit art_alfareris_url
    click_on "New Art Alfareri"

    fill_in "Email", with: @art_alfareri.email
    fill_in "Informacion", with: @art_alfareri.informacion
    fill_in "Localizacion", with: @art_alfareri.localizacion
    fill_in "Rss facebook", with: @art_alfareri.rss_facebook
    fill_in "Subtitulo", with: @art_alfareri.subtitulo
    fill_in "Telefono", with: @art_alfareri.telefono
    fill_in "Titulo", with: @art_alfareri.titulo
    click_on "Create Art alfareri"

    assert_text "Art alfareri was successfully created"
    click_on "Back"
  end

  test "updating a Art alfareri" do
    visit art_alfareris_url
    click_on "Edit", match: :first

    fill_in "Email", with: @art_alfareri.email
    fill_in "Informacion", with: @art_alfareri.informacion
    fill_in "Localizacion", with: @art_alfareri.localizacion
    fill_in "Rss facebook", with: @art_alfareri.rss_facebook
    fill_in "Subtitulo", with: @art_alfareri.subtitulo
    fill_in "Telefono", with: @art_alfareri.telefono
    fill_in "Titulo", with: @art_alfareri.titulo
    click_on "Update Art alfareri"

    assert_text "Art alfareri was successfully updated"
    click_on "Back"
  end

  test "destroying a Art alfareri" do
    visit art_alfareris_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Art alfareri was successfully destroyed"
  end
end
