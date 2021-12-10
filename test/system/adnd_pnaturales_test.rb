require "application_system_test_case"

class AdndPnaturalesTest < ApplicationSystemTestCase
  setup do
    @adnd_pnaturale = adnd_pnaturales(:one)
  end

  test "visiting the index" do
    visit adnd_pnaturales_url
    assert_selector "h1", text: "Adnd Pnaturales"
  end

  test "creating a Adnd pnaturale" do
    visit adnd_pnaturales_url
    click_on "New Adnd Pnaturale"

    fill_in "Ruta", with: @adnd_pnaturale.ruta
    fill_in "Subtitulo", with: @adnd_pnaturale.subtitulo
    fill_in "Titulo", with: @adnd_pnaturale.titulo
    click_on "Create Adnd pnaturale"

    assert_text "Adnd pnaturale was successfully created"
    click_on "Back"
  end

  test "updating a Adnd pnaturale" do
    visit adnd_pnaturales_url
    click_on "Edit", match: :first

    fill_in "Ruta", with: @adnd_pnaturale.ruta
    fill_in "Subtitulo", with: @adnd_pnaturale.subtitulo
    fill_in "Titulo", with: @adnd_pnaturale.titulo
    click_on "Update Adnd pnaturale"

    assert_text "Adnd pnaturale was successfully updated"
    click_on "Back"
  end

  test "destroying a Adnd pnaturale" do
    visit adnd_pnaturales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adnd pnaturale was successfully destroyed"
  end
end
